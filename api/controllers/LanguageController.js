module.exports = {
  languageDetector: async (req, res) => {
    let languageExistence = await sails.helpers.languageDetector(req);
    if (languageExistence) {
      return res.redirect('/' + languageExistence.code);
    } else {
      return res.redirect('/ru');
    }
  }
};
