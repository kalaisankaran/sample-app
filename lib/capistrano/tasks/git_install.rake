desc "Install git hub in ubuntu servers"
task :git_install do
  on roles(:all) do |h|
    execute :sudo, :'apt-get' , '-y install git' 
    #if test("env | grep SSH_AUTH_SOCK")
    #  info "Agent forwarding is up to #{h}"
    #else
    #  error "Agent forwarding is NOT up to #{h}"
    #end
  end
end
