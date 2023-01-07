name = "subfinder"
type = "ext"

function vertical(ctx, domain)
    local cmd = "subfinder -silent -d " .. domain

    local data = assert(io.popen(cmd))
    for line in data:lines() do
        new_name(ctx, line)
    end
    data:close()
end
