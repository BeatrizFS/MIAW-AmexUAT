<html>
  <body>
	<script type='text/javascript'>
		function initEmbeddedMessaging() {
			try {
				embeddedservice_bootstrap.settings.language = 'en_US'; // For example, enter 'en' or 'en-US'

				window.addEventListener("onEmbeddedMessagingReady", e => {
					// Campos visíveis no pré-chat
					embeddedservice_bootstrap.prechatAPI.setVisiblePrechatFields({
					"_firstName": {
						"value": "User",
						"isEditableByEndUser": true
					},
					"_lastName": {
						"value": "Test",
						"isEditableByEndUser": true
					}
					});

				embeddedservice_bootstrap.init(
					'00DOu000001GFQj',
					'Amex_Session',
					'https://axaus-travel--uatt.sandbox.my.site.com/ESWAmexSession1748887208589',
					{
						scrt2URL: 'https://axaus-travel--uatt.sandbox.my.salesforce-scrt.com'
					}
				);
			} catch (err) {
				console.error('Error loading Embedded Messaging: ', err);
			}
		};
	</script>
	<script type='text/javascript' src='https://axaus-travel--uatt.sandbox.my.site.com/ESWAmexSession1748887208589/assets/js/bootstrap.min.js' onload='initEmbeddedMessaging()'></script>
  </body>
</html>
