module.exports.routes = {
  '/': 'LanguageController.languageDetector',
  '/:param1': 'PageController.homepage',
  '/:param1/:param2': 'PageController.twoParametersRoute',
  '/:param1/:param2/:param3': 'PageController.threeParametersRoute',
  '/:param1/:param2/:param3/:param4': 'PageController.fourParametersRoute'
};
