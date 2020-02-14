module.exports = {

  homepage: async (req, res) => {

    var languageExistence = await sails.helpers.languageDetector(req);

    if (languageExistence) {

      var language = languageExistence.code;

    } else {

      return res.notFound();

    }

    var page = await Page.findOne({
      systemName: 'homepage',
      language: language
    });

    return res.view('pages/homepage', {
      layout: 'layouts/frontend',
      content: page.content,
      page: page.systemName,
      title: page.title,
      description: page.seoDescription
    });

  },

  twoParametersRoute: async (req, res) => {

    var languageExistence = await sails.helpers.languageDetector(req);

    if (languageExistence) {

      var language = languageExistence.code;

    } else {

      return res.notFound();

    }

    var page = await Page.findOne({
      systemName: req.param('param2'),
      language: language
    });

    if (page) {

      return res.view('pages/services', {
        layout: 'layouts/frontend',
        content: page.content,
        page: page.systemName,
        title: page.title,
        description: page.seoDescription
      });

    } else {

      return res.notFound();

    }

  },

  threeParametersRoute: async (req, res) => {

    if (req.isSocket) {

      if (req.param('param1') === 'get') {

        if (req.param('param2') === 'menu') {

          var menu = await Menu.findOne({
            systemName: req.param('service'),
            language: req.param('language')
          });

          return res.json(menu);

        }

      }

    }

    var languageExistence = await sails.helpers.languageDetector(req);

    if (languageExistence) {

      var language = languageExistence.code;

    } else {

      return res.notFound();

    }

    if (req.param('param2') === 'услуги') {

      var service = await Service.findOne({
        systemName: req.param('param3'),
        language: language
      });

      if (service) {
        return res.view('pages/service', {
          layout: 'layouts/frontend',
          content: service.content,
          title: service.title,
          description: service.seoDescription
        });
      } else {
        return res.notFound();
      }

    }
    if (req.param('param2') === 'галерея') {
      return res.ok();
    } else {

      return res.notFound();

    }

  },

  fourParametersRoute: async (req, res) => {
    var languageExistence = await sails.helpers.languageDetector(req);

    if (languageExistence) {

      var language = languageExistence.code;

    } else {

      return res.notFound();

    }

    if (req.param('param2') === 'услуги') {

      var service = await Service.findOne({
        systemName: req.param('param3'),
        language: language
      }).populate('subServices', {
        where: {
          systemName: req.param('param4'),
          language: language
        }
      });

      if (service) {

        if (service.subServices[0]) {

          return res.view('pages/subService', {
            layout: 'layouts/frontend',
            content: service.subServices[0].content,
            subservice: true,
            service: service.systemName,
            language: language,
            title: service.subServices[0].title,
            description: service.subServices[0].seoDescription
          });

        } else {

          return res.notFound();

        }

      } else {

        return res.notFound();

      }

    } else {
      return res.notFound();
    }

  }
};
