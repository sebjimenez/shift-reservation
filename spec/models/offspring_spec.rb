require 'rails_helper'

RSpec.describe Offspring, type: :model do
  it "should have attribute type" do
    expect(subject).to have_attribute :type
  end

  it "should initialize successfully as an instance of the described class" do
    expect(subject).to be_a_kind_of described_class
  end

  it "should identify its parent class" do
  end

  it "should not exist without parent" do
    #
  end
end



1. Un clase hija se identifica con la clase padre
Puedes saber qué clase es
Puedes crearla, modificarla, etc
Tiene asociado un padre siempre
5. Cuando destruyes el padre destruyes el hijo
6. Tiene configuración en el yaml de configuración que especifica qué tipo de hijos tienes
7. Se hacen las validaciones pertinentes para cada uno (nombre, etc)
8. Los cursos se definen con un enum
9. Edad máxima y mínima se definen en el yaml de configuración
