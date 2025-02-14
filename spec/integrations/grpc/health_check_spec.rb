# frozen_string_literal: true

require "spec_helper"

describe "health checker", skip: GRPC_KIT do
  include_context "anycable:grpc:server"

  before(:all) do
    @service = Grpc::Health::Checker.rpc_stub_class
      .new(AnyCable.config.rpc_host, :this_channel_is_insecure)
  end

  let(:service) { @service }

  let(:params) { {} }

  subject { service.check(Grpc::Health::V1::HealthCheckRequest.new(params)) }

  context "without service" do
    specify do
      expect(subject.status).to eq :NOT_SERVING
    end
  end

  context "with unknown service" do
    let(:params) { {service: "fake-service"} }

    specify do
      expect { subject }.to raise_error(GRPC::NotFound)
    end
  end

  context "with service" do
    let(:params) { {service: "anycable.RPC"} }

    specify do
      expect(subject.status).to eq :SERVING
    end
  end
end
