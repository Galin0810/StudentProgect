class Translation
  include Mongoid::Document
  include I18nBackendMongoid::Translateble

  store_in collection: 'i18n'
end
