looker.plugins.visualizations.add({
  id: "test_viz",
  label: "Test Viz",

  create: function(element) {
    element.innerHTML = "<h1>Hello Looker</h1>";
  },

  updateAsync: function(data, element, config, queryResponse, details, done) {
    done();
  }
});

# /* Capgemini KPI Card for Looker
# * Version 1.0.0
# * No external dependencies.
# * Query contract: 1 row, 1-3 measures.
# */
# (function (global) {
#   "use strict";

#   const BRAND = Object.freeze({
#     blue: "#005BAB", lightBlue: "#1DB8F2", darkBlue: "#121A38", white: "#FFFFFF",
#     turquoise: "#00D5D0", yellow: "#FEB100", orange: "#FF816E", lilac: "#D4D3F1",
#     teal: "#00828E", terracotta: "#BE4D00", deepRed: "#8F3237", purple: "#71609E"
#   });

#   const ICONS = {
#     domain: '<circle cx="32" cy="32" r="7"/><circle cx="12" cy="18" r="5"/><circle cx="52" cy="18" r="5"/><circle cx="12" cy="48" r="5"/><circle cx="52" cy="48" r="5"/><path d="M27 28L16 21M37 28l11-7M27 36l-11 9M37 36l11 9"/>',
#     schema: '<path d="M32 8L8 22l24 14 24-14L32 8zM8 32l24 14 24-14M8 42l24 14 24-14"/>',
#     table: '<rect x="9" y="9" width="46" height="46" rx="3"/><path d="M9 24h46M9 39h46M24 9v46M40 9v46"/>',
#     field: '<path d="M15 50L29 14h6l14 36M20 38h24"/><path d="M46 30h10M51 25v10"/>',
#     hierarchy: '<rect x="25" y="7" width="14" height="12"/><rect x="5" y="45" width="14" height="12"/><rect x="25" y="45" width="14" height="12"/><rect x="45" y="45" width="14" height="12"/><path d="M32 19v14M12 33h40M12 33v12M32 33v12M52 33v12"/>',
#     database: '<ellipse cx="32" cy="14" rx="22" ry="8"/><path d="M10 14v14c0 4 10 8 22 8s22-4 22-8V14M10 28v14c0 4 10 8 22 8s22-4 22-8V28"/>',
#     view: '<path d="M4 32s10-16 28-16 28 16 28 16-10 16-28 16S4 32 4 32z"/><circle cx="32" cy="32" r="8"/>',
#     generic: '<circle cx="32" cy="32" r="23"/><path d="M20 38l8-8 7 6 10-12"/>'
#   };

#   function esc(value) {
#     return String(value == null ? "" : value).replace(/[&<>'"]/g, c => ({"&":"&amp;","<":"&lt;",">":"&gt;","'":"&#39;",'"':"&quot;"}[c]));
#   }
#   function raw(cell) {
#     if (cell == null) return null;
#     return typeof cell === "object" && "value" in cell ? cell.value : cell;
#   }
#   function rendered(cell) {
#     if (cell == null) return "";
#     if (typeof cell === "object" && cell.rendered != null) return String(cell.rendered);
#     const v=raw(cell); return v == null ? "" : String(v);
#   }
#   function number(value) {
#     const r=raw(value); if (r === null || r === "") return null; const n=Number(r); return Number.isFinite(n) ? n : null;
#   }
#   function fieldName(field) { return field && (field.name || field.label_short || field.label); }
#   function measures(queryResponse) {
#     return (queryResponse && queryResponse.fields && queryResponse.fields.measure_like) || [];
#   }
#   function selectMeasure(measureList, configured, index) {
#     if (configured && configured !== "auto") {
#       const hit=measureList.find(m => m.name === configured); if (hit) return hit;
#     }
#     return measureList[index] || null;
#   }
#   function formatNumber(value, config, fallbackRendered) {
#     if (fallbackRendered && config.number_format === "query") return fallbackRendered;
#     const n=Number(value); if (!Number.isFinite(n)) return "—";
#     const decimals=Math.max(0, Math.min(6, Number(config.decimals || 0)));
#     if (config.number_format === "compact") return new Intl.NumberFormat(undefined,{notation:"compact",maximumFractionDigits:decimals}).format(n);
#     if (config.number_format === "percent") return new Intl.NumberFormat(undefined,{style:"percent",maximumFractionDigits:decimals}).format(n);
#     return new Intl.NumberFormat(undefined,{minimumFractionDigits:decimals,maximumFractionDigits:decimals}).format(n);
#   }
#   function trend(current, comparison, explicitPercent, mode) {
#     const c=Number(current), p=Number(comparison);
#     const hasExplicit=explicitPercent !== null && explicitPercent !== undefined && explicitPercent !== "";
#     const ep=hasExplicit ? Number(explicitPercent) : NaN;
#     const delta=Number.isFinite(c)&&Number.isFinite(p) ? c-p : null;
#     let pct=Number.isFinite(ep) ? ep : (delta != null && p !== 0 ? delta/Math.abs(p) : null);
#     if (mode === "percent_points" && Number.isFinite(ep)) pct=ep/100;
#     const direction=delta == null ? "neutral" : delta>0 ? "up" : delta<0 ? "down" : "neutral";
#     return {delta,pct,direction};
#   }
#   function status(direction, config) {
#     if (direction === "neutral") return {color:config.neutral_color || BRAND.purple, arrow:"•"};
#     const upGood=config.direction_semantics !== "down_is_good";
#     const good=(direction === "up" && upGood)||(direction === "down" && !upGood);
#     return {color:good ? (config.positive_color||BRAND.turquoise):(config.negative_color||BRAND.orange),arrow:direction === "up" ? "▲":"▼"};
#   }
#   function iconSvg(name) {
#     const body=ICONS[name] || ICONS.generic;
#     return '<svg viewBox="0 0 64 64" aria-hidden="true" focusable="false" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">'+body+'</svg>';
#   }
#   function optionList(measureList) {
#     const values=[{"auto":"Auto-detect"}]; measureList.forEach(m => values.push({[m.name]:m.label_short||m.label||m.name})); return values;
#   }

#   const options = {
#     title: {type:"string",label:"Card title",default:"KPI"},
#     icon: {type:"string",label:"Icon",display:"select",values:[{"domain":"Domain"},{"schema":"Schema"},{"table":"Table"},{"field":"Field"},{"hierarchy":"Hierarchy"},{"database":"Database"},{"view":"View"},{"generic":"Generic"}],default:"generic"},
#     primary_measure: {type:"string",label:"Primary measure",display:"select",values:[{"auto":"Auto-detect"}],default:"auto"},
#     comparison_measure: {type:"string",label:"Comparison measure",display:"select",values:[{"auto":"Auto-detect second measure"}],default:"auto"},
#     percent_measure: {type:"string",label:"Percent-change measure",display:"select",values:[{"auto":"Calculate or use third measure"}],default:"auto"},
#     show_comparison: {type:"boolean",label:"Show comparison",default:true},
#     comparison_caption: {type:"string",label:"Comparison caption",default:"vs last refresh"},
#     number_format: {type:"string",label:"Primary number format",display:"select",values:[{"query":"Use query formatting"},{"number":"Number"},{"compact":"Compact"},{"percent":"Percent"}],default:"query"},
#     decimals: {type:"number",label:"Decimals",default:0},
#     direction_semantics: {type:"string",label:"Direction semantics",display:"select",values:[{"up_is_good":"Increase is positive"},{"down_is_good":"Decrease is positive"}],default:"up_is_good"},
#     background_color: {type:"string",label:"Card background",display:"color",default:BRAND.white},
#     text_color: {type:"string",label:"Text color",display:"color",default:BRAND.darkBlue},
#     icon_background: {type:"string",label:"Icon background",display:"color",default:BRAND.blue},
#     icon_color: {type:"string",label:"Icon color",display:"color",default:BRAND.white},
#     positive_color: {type:"string",label:"Positive color",display:"color",default:BRAND.turquoise},
#     negative_color: {type:"string",label:"Negative color",display:"color",default:BRAND.orange},
#     neutral_color: {type:"string",label:"Neutral color",display:"color",default:BRAND.purple},
#     border_color: {type:"string",label:"Border color",display:"color",default:"#D9E2EC"},
#     corner_radius: {type:"number",label:"Corner radius",default:14},
#     show_shadow: {type:"boolean",label:"Show shadow",default:true}
#   };

#   const visualization = {
#     id:"capgemini_kpi_card", label:"Capgemini KPI Card", options,
#     create:function(element) {
#       element.innerHTML='<style>'+css+'</style><div class="cg-kpi" role="group"><div class="cg-icon"></div><div class="cg-content"><div class="cg-title"></div><div class="cg-value"></div><div class="cg-change" aria-live="polite"></div><div class="cg-caption"></div></div></div>';
#     },
#     updateAsync:function(data, element, config, queryResponse, details, done) {
#       try {
#         if (this.clearErrors) this.clearErrors();
#         const ml=measures(queryResponse);
#         if (!ml.length || !data || !data.length) {
#           if (this.addError) this.addError({title:"KPI Card requires data",message:"Add at least one measure and return one row."});
#           return;
#         }
#         const dynamic={primary_measure:{values:optionList(ml)},comparison_measure:{values:optionList(ml)},percent_measure:{values:optionList(ml)}};
#         if (this.trigger) this.trigger("registerOptions", [{...options,...dynamic}]);
#         const primary=selectMeasure(ml,config.primary_measure,0), comparison=selectMeasure(ml,config.comparison_measure,1), percent=selectMeasure(ml,config.percent_measure,2);
#         const row=data[0], pcell=row[fieldName(primary)], ccell=comparison ? row[fieldName(comparison)] : null, xcell=percent ? row[fieldName(percent)] : null;
#         const pv=number(pcell), cv=number(ccell), xv=number(xcell);
#         if (pv == null) {
#           if (this.addError) this.addError({title:"Primary measure is not numeric",message:"Select a numeric primary measure."});
#           return;
#         }
#         const tr=trend(pv,cv,xv,"ratio"), st=status(tr.direction,config), show=Boolean(config.show_comparison && comparison && cv != null);
#         const root=element.querySelector('.cg-kpi');
#         root.style.setProperty('--bg',config.background_color||BRAND.white); root.style.setProperty('--fg',config.text_color||BRAND.darkBlue);
#         root.style.setProperty('--icon-bg',config.icon_background||BRAND.blue); root.style.setProperty('--icon-fg',config.icon_color||BRAND.white);
#         root.style.setProperty('--border',config.border_color||'#D9E2EC'); root.style.setProperty('--radius',Math.max(0,Number(config.corner_radius||14))+'px');
#         root.style.setProperty('--shadow',config.show_shadow===false?'none':'0 8px 24px rgba(18,26,56,.10)');
#         element.querySelector('.cg-icon').innerHTML=iconSvg(config.icon||'generic');
#         element.querySelector('.cg-title').textContent=config.title||primary.label_short||primary.label||'KPI';
#         element.querySelector('.cg-value').textContent=formatNumber(pv,config,rendered(pcell));
#         const change=element.querySelector('.cg-change'), caption=element.querySelector('.cg-caption');
#         if (show) {
#           const deltaText=new Intl.NumberFormat(undefined,{maximumFractionDigits:Number(config.decimals||0)}).format(Math.abs(tr.delta));
#           const pctText=tr.pct==null?'': ' ('+new Intl.NumberFormat(undefined,{style:'percent',maximumFractionDigits:2}).format(Math.abs(tr.pct))+')';
#           change.textContent=st.arrow+' '+deltaText+pctText; change.style.color=st.color; change.hidden=false;
#           caption.textContent=config.comparison_caption||'vs comparison'; caption.hidden=false;
#         } else { change.hidden=true; caption.hidden=true; }
#         root.setAttribute('aria-label',(config.title||'KPI')+': '+formatNumber(pv,config,rendered(pcell))+(show?', '+change.textContent+' '+caption.textContent:''));
#       } catch (e) {
#         if (this.addError) this.addError({title:"KPI Card error",message:e.message}); else throw e;
#       } finally { if (done) done(); }
#     }
#   };

#   const css=`
#     .cg-kpi{--bg:#fff;--fg:#121A38;--icon-bg:#005BAB;--icon-fg:#fff;--border:#D9E2EC;--radius:14px;--shadow:0 8px 24px rgba(18,26,56,.10);box-sizing:border-box;width:100%;height:100%;min-height:118px;padding:18px 20px;display:grid;grid-template-columns:64px minmax(0,1fr);gap:18px;align-items:center;background:var(--bg);color:var(--fg);border:1px solid var(--border);border-radius:var(--radius);box-shadow:var(--shadow);font-family:Arial,"Helvetica Neue",sans-serif;overflow:hidden}
#     .cg-icon{width:64px;height:64px;border-radius:50%;background:var(--icon-bg);color:var(--icon-fg);display:grid;place-items:center;flex:none}.cg-icon svg{width:38px;height:38px}
#     .cg-content{min-width:0;display:flex;flex-direction:column;justify-content:center}.cg-title{font-size:13px;font-weight:700;letter-spacing:.02em;text-transform:uppercase;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
#     .cg-value{font-size:32px;line-height:1.15;font-weight:500;letter-spacing:-.02em;margin-top:5px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.cg-change{font-size:12px;line-height:1.3;font-weight:700;margin-top:6px}.cg-caption{font-size:11px;line-height:1.3;color:#5F6B7A;margin-top:2px}
#     @media(max-width:240px){.cg-kpi{grid-template-columns:48px 1fr;padding:12px;gap:12px}.cg-icon{width:48px;height:48px}.cg-icon svg{width:28px;height:28px}.cg-value{font-size:25px}.cg-title{font-size:11px}}
#   `;

#   if (global.looker && global.looker.plugins && global.looker.plugins.visualizations) global.looker.plugins.visualizations.add(visualization);
#   if (typeof module !== "undefined" && module.exports) module.exports={visualization,BRAND,helpers:{raw,rendered,number,formatNumber,trend,status,iconSvg,esc}};
# })(typeof window !== "undefined" ? window : globalThis);
