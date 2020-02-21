let(:valid_session) {
    allow(controller).to receive_message_chain(:login?).and_return(true)
}