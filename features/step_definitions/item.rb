# Conditions

Soit("{string} l'item affiché") do |item|
  visit getURI(item)
end

# Events

Quand("on choisit la rubrique {string}") do |topic|
  click_on topic
end

Quand("on ajoute un attribut {string} et la valeur {string}") do |attribut, value|
  find_button('Ajouter un attribut').click
    fill_in "#key", with: attribut

    fill_in "#value", with: value

  find_button('Valider').click
end

# Outcomes

Alors("le titre de l'item affiché est {string}") do |item|
  expect(find(".Subject h2")).to have_content(item)
end

Alors("la valeur de l'attribut {string} est {string}") do |attribute, value|
  expect(page).to have_content(value)
  expect(page).to have_content(attribute)
end

Alors("une des rubriques de l'item est {string}") do |topic|
  expect(page).to have_content(topic)
end
