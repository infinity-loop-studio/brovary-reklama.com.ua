module.exports = {
  attributes: {
    systemName: {
      type: 'string'
    },
    name: {
      type: 'string'
    },
    description: {
      type: 'string'
    },
    content: {
      type: 'string'
    },
    subServices: {
      collection: 'SubService',
      via: 'service'
    },
    language: {
      type: 'string'
    },
    title: {
      type: 'string'
    },
    seoDescription: {
      type: 'string'
    }
  }
};

