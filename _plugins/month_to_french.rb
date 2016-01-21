module Jekyll
  module FrenchMonthFilter

    MONTHS = [
      'Janvier',
      'Février',
      'Mars',
      'Avril',
      'Mai',
      'Juin',
      'Juillet',
      'Août',
      'Septembre',
      'Octobre',
      'Novembre',
      'Décembre'
    ]

    MONTHS_SHORT = [
      'Janv.',
      'Févr.',
      'Mars',
      'Avr.',
      'Mai',
      'Juin',
      'Juill.',
      'Août',
      'Sept.',
      'Oct.',
      'Nov.',
      'Déc.'
    ]

    def french_month(input)
      return Jekyll::FrenchMonthFilter::MONTHS[input.to_i() - 1]
    end

    def french_month_short(input)
      m = self.french_month(input)
      return m[0..2]
    end

    def date_to_french(input)
      m = Jekyll::FrenchMonthFilter::MONTHS_SHORT[input.month - 1]
      return "#{input.day} #{m} #{input.year}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::FrenchMonthFilter)
