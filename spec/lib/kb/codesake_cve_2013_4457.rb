require 'spec_helper'

describe "The CVE-2013-4457 vulnerability" do
  before(:all) do 
    @check = Codesake::Dawn::Kb::CVE_2013_4457.new
    # @check.debug = true
  end
  it "is detected if vulnerable version of cocaine rubygem is detected" do
    @check.options[:dependencies]=[{:name=>"cocaine", :version=>'0.4.0'}]
    @check.vuln?.should   be_true
  end
  it "is detected if vulnerable version of cocaine rubygem is detected" do
    @check.options[:dependencies]=[{:name=>"cocaine", :version=>'0.4.1'}]
    @check.vuln?.should   be_true
  end
  it "is detected if vulnerable version of cocaine rubygem is detected" do
    @check.options[:dependencies]=[{:name=>"cocaine", :version=>'0.4.2'}]
    @check.vuln?.should   be_true
  end
  it "is detected if vulnerable version of cocaine rubygem is detected" do
    @check.options[:dependencies]=[{:name=>"cocaine", :version=>'0.5.0'}]
    @check.vuln?.should   be_true
  end
  it "is detected if vulnerable version of cocaine rubygem is detected" do
    @check.options[:dependencies]=[{:name=>"cocaine", :version=>'0.5.1'}]
    @check.vuln?.should   be_true
  end
  it "is detected if vulnerable version of cocaine rubygem is detected" do
    @check.options[:dependencies]=[{:name=>"cocaine", :version=>'0.5.2'}]
    @check.vuln?.should   be_true
  end

  it "is skipped if non vulnerable version of cocaine rubygem is detected" do
    @check.options[:dependencies]=[{:name=>"cocaine", :version=>'0.3.2'}]
    @check.vuln?.should   be_true
  end



end
