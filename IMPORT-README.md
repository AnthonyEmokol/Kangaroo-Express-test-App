# Kangaroo Express Partner Catalogue Import

The app imports the partner WooCommerce catalogue in batches of up to 100 products through the Vercel `/api/products` function. It continues page-by-page in the background until the full published catalogue is loaded.

Customer-facing descriptions are sanitized to remove partner names, partner URLs, email/phone references and HTML links. Product pages and WhatsApp links stay inside Kangaroo Express. Product images are served through the Kangaroo Express `/api/product-image` proxy so customer-facing image links do not expose the partner domain.

No partner promotional flyers or banners are imported.
