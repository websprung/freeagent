require "test_helper"

class CompanyResourceTest < Minitest::Test
  def test_info
    stub = stub_request("company", response: stub_response(fixture: "company/info"))
    client = FreeAgent::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    company = client.company.info

    assert_equal FreeAgent::Company, company.class
    assert_equal "hello@example.com", company.email
  end
end
