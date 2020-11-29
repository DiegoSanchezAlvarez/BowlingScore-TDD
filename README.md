![](https://github.com/kleer-la/template2_6_5/workflows/Ruby/badge.svg)

### Forma de llamar al reporte de travis: [![Build Status](LinkDeLaImagenDelReporteDeTravis)](LinkDelRepositorioDesdeTravis)

#[![Build Status](https://travis-ci.com/DiegoSanchezAlvarez/BowlingScore-TDD.svg?branch=main)](https://travis-ci.com/github/DiegoSanchezAlvarez/BowlingScore-TDD)


para ver el reporte de analisis de codigo:

https://kleer-la.github.io/template2_6_5/overview.html#


### Para el setup sin docker:

install ruby 2.6.5

Setup:
	sudo apt-get install phantomjs

on the project root:
	gem install bundler
	bundle install

to run app:
	ruby app.rb

for unit test:
	rspec

for acceptance test:
	cucumber