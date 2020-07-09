require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'top_phrases_input.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    q = Question.create(
        text: row['phrases'],
        options_attributes: [
            { text: row['option_1'] },
            { text: row['option_2'] }
        ]
    )
    puts "#{q.text}, with options #{q.options.map{ |option| option.text }.join(" & ")} saved"
end

puts "There are now #{Question.count} rows in the transactions table"