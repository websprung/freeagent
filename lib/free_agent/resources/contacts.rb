module FreeAgent
  class ContactsResource < Resource

    # view:
    #   all: Show all contacts.
    #   active: Show only active contacts (default).
    #   clients: Show all clients.
    #   suppliers: Show only active suppliers.
    #   active_projects: Show only clients with active projects.
    #   completed_projects: Show only clients with completed invoices.
    #   open_clients: Show only clients with open invoices.
    #   open_suppliers: Show only suppliers with open bills.
    #   hidden: Show only hidden contacts.
    #
    def list(**params)
      response = get_request("contacts", params: params)
      Collection.from_response(response, key: "contacts", type: Contact)
    end
  end
end
