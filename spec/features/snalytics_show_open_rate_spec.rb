feature 'Feature - analytics: total emails opened' do
  scenario 'Open rate is shown on analytics page, example 0' do
    visit analytics_path 
    expect(page).to have_content 'Open rate for Shipment emails is 0%'
  end
end
