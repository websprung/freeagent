module FreeAgent
  class CompanyResource < Resource
    def info
      Company.new get_request("company").body.dig("company")
    end
  end
end
