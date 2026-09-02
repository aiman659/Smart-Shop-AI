SMART SHOP AI — FINAL CLEAN RUNNABLE PACKAGE
================================================

Canonical application:
    web\app.py

Database:
    web\database\smart_shop.db
    The 72-product catalogue from the supplied live web_v3 package is preserved.

Run:
    Double-click RUN_SMART_SHOP.bat
    Then open http://127.0.0.1:5000

What was audited/fixed:
- One canonical Flask web application.
- Frontend templates and Flask routes checked for endpoint mismatches.
- Database methods used by app.py checked against database.py.
- Python syntax checked; the original desktop ui/products.py was malformed/truncated, so it is NOT used by this clean web app.
- Jinja templates parsed successfully.
- Removed stale __pycache__ and the pre-UI duplicate database from the runnable package.
- Fixed product-card AI score rendering to use the backend ai_score helper.
- Fixed wishlist macro import so wishlist context is available.
- Added a backend-connected /api/support FAQ endpoint without changing the database schema.
- Connected the Support Center JavaScript to that endpoint, with a safe local fallback.
- Preserved wishlist, cart, authentication, catalogue, dashboard, analytics and recommendations routes.

Important:
- This is a local/demo application. Passwords are stored as plain text in the existing schema, the Flask secret is development-only, and checkout/order tracking/payment/refund processing are not real integrations.
- No database reset or reseeding is performed by the launcher.
