// Add code for your extension service worker here. This code runs in the
// background and should listen to relevant events for your extension.
// Learn more: https://developer.chrome.com/docs/extensions/develop/concepts/service-workers

chrome.runtime.onInstalled.addListener(details => {
  if (details.reason === chrome.runtime.OnInstalledReason.INSTALL) {
    console.log('Hello background!');
  }
});
