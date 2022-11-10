require "faraday"
require "faraday_middleware"
require "free_agent/version"

module FreeAgent
  autoload :Client, "free_agent/client"
  autoload :Collection, "free_agent/collection"
  autoload :Error, "free_agent/error"
  autoload :Resource, "free_agent/resource"
  autoload :Object, "free_agent/object"

  # High-level categories of FreeAgent API calls
  autoload :CompanyResource, "free_agent/resources/company"
  autoload :ContactsResource, "free_agent/resources/contacts"

  # Classes used to return a nicer object wrapping the response data
  autoload :Company, "free_agent/objects/company"
  autoload :Contact, "free_agent/objects/contact"
end
