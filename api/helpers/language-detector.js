module.exports = {
  inputs: {
    req: {
      type: 'ref',
      description: 'The current incoming request (req).',
      required: true
    }
  },
  fn: async function (inputs, exits) {
    if (inputs.req.param('param1')) {
      var requestLanguage = inputs.req.param('param1')
    } else {
      var requestLanguage = inputs.req.headers["accept-language"];
      requestLanguage = requestLanguage.split(',');
      requestLanguage = requestLanguage[0].split('-');
      requestLanguage = requestLanguage[0];
    }
    var languageExistence = await Language.findOne({
      code: requestLanguage
    });
    return exits.success(languageExistence);
  }
};
