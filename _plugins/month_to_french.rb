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

    def french_month(input)
      return Jekyll::FrenchMonthFilter::MONTHS[input.to_i() - 1]
    end

    def french_month_short(input)
      m = self.french_month(input)
      return m[0..2]
    end
  end
end

Liquid::Template.register_filter(Jekyll::FrenchMonthFilter)
