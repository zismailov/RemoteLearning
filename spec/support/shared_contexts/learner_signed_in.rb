shared_context "when learner signed in" do
  let(:current_learner) { create :learner }

  before do
    login_as current_learner, scope: :learner
  end
end
