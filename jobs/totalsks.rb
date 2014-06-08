# :first_in sets how long it takes before the job is first run. In this case, it is run immediately
SCHEDULER.every '1m', :first_in => 0 do |job|
  require 'savon'
  client = Savon.client(wsdl: 'http://macservice.machung.ac.id/akdmservice.asmx?wsdl')
  response = client.call(:get_akdm_ttl_sks_tempuh, message: { thnajaran: "2013", semester: "1", idnim: "1161" }).hash
  CurrentSks = response[:envelope][:body][:get_akdm_ttl_sks_tempuh_response][:get_akdm_ttl_sks_tempuh_result]
  send_event('totsks', { value: CurrentSks})
end