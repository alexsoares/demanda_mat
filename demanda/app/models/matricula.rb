class Matricula < ActiveRecord::Base
  belongs_to :crianca
  belongs_to :unidade
  ANO = %w(2008 2009 2010 2011 2012 2013)
end
