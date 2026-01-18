# Monthly Update Prompt for Claude Code

Run this command in Claude Code to update the site with new tools:

```
claude "Add 2-3 new tools to my FreeToolBox website in /Users/olegtolchinsky/claudie/webtools-site. Research trending tool ideas, create the HTML files, update the homepage index.html to include them in the appropriate categories, and update the sitemap.xml. Focus on tools that are: 1) High search volume 2) Can run entirely client-side 3) Genuinely useful. Examples: mortgage calculator, image compressor, regex tester, markdown previewer, color palette generator, etc."
```

## What This Does

1. Researches current trending tool ideas
2. Creates 2-3 new tool HTML files
3. Updates the homepage to list the new tools
4. Updates the sitemap for SEO
5. Ensures consistent styling with existing tools

## Monthly Maintenance Checklist

- [ ] Run the update command above
- [ ] Preview the site locally: `cd webtools-site && python -m http.server 8000`
- [ ] Check new tools work correctly
- [ ] Deploy to hosting (GitHub Pages, Netlify, Vercel, etc.)

## Deployment Options (One-Time Setup)

### GitHub Pages (Free)
```bash
cd webtools-site
git init
git add .
git commit -m "Initial commit"
git remote add origin git@github.com:YOUR_USERNAME/freetoolbox.git
git push -u origin main
# Enable GitHub Pages in repo settings
```

### Netlify (Free)
1. Push to GitHub
2. Connect repo to Netlify
3. Auto-deploys on git push

### Vercel (Free)
```bash
npm i -g vercel
cd webtools-site
vercel
```

## Monetization Setup

### Google AdSense
1. Apply at https://www.google.com/adsense
2. Wait for approval (site needs some traffic first)
3. Replace ad placeholder divs with your AdSense code:

```html
<!-- Replace this -->
<div class="ad-container horizontal">
  <p>Advertisement</p>
</div>

<!-- With this -->
<div class="ad-container horizontal">
  <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-XXXXXXX" crossorigin="anonymous"></script>
  <ins class="adsbygoogle"
       style="display:block"
       data-ad-client="ca-pub-XXXXXXX"
       data-ad-slot="XXXXXXX"
       data-ad-format="auto"></ins>
  <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
</div>
```

## Revenue Expectations

With consistent updates and SEO:
- Month 1-3: Building traffic, ~$0-50/month
- Month 4-6: Growing visibility, ~$50-150/month
- Month 6-12: Established presence, ~$150-500/month
- Year 2+: With 50+ tools and good SEO, $500+/month is achievable

Key factors:
- Tool page count (more tools = more search entry points)
- SEO optimization (each tool targets specific keywords)
- Page load speed (fast sites rank better)
- Mobile responsiveness (already implemented)
- Consistent monthly updates (shows Google the site is active)
