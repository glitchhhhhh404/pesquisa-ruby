require 'mechanize'

def search(query)

  # Criar uma nova instância do Mechanize

  agent = Mechanize.new

  # Ir para a página de pesquisa do site de busca

  page = agent.get('https://www.google.com/')

  # Encontrar o formulário de pesquisa na página

  search_form = page.form('f')

  # Definir o valor da pesquisa como o argumento da função

  search_form.q = query

  # Enviar o formulário e obter a página de resultados da pesquisa

  search_results = agent.submit(search_form)

  # Extrair os links dos resultados da pesquisa

  results = []

  search_results.links.each do |link|

    results << link.href

  end

  # Retornar os resultados

  results

end

# Testar a função de pesquisa com a consulta "site de busca ruby"

puts search("site de busca ruby")

