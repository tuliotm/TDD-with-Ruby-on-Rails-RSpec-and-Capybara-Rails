describe 'Test Double' do
    it '--' do
        user = double('User')
        allow(user).to receive_messages(name: 'Tulio', password: 'secret')
        # or
        # allow(user).to receive(:name).and_return('Tulio')
        # allow(user).to receive(:password).and_return('secret')
        puts user.name
        puts user.password
    end

    it 'as_null_object' do
        user = double('User').as_null_object # with this method, any call to "double" that brings a error mensage, it will be transformed in null object
        allow(user).to receive_messages(name: 'Tulio', password: 'secret')
        # or
        # allow(user).to receive(:name).and_return('Tulio')
        # allow(user).to receive(:password).and_return('secret')
        puts user.name
        puts user.password
        user.abc
    end
end