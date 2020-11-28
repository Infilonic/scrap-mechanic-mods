function sign(num)
    if num < 0 then
        return -1
    elseif num > 0 then
        return 1
    else
        return 0
    end
end

function getLocal(shape, vec)
    return sm.vec3.new(sm.shape.getRight(shape):dot(vec), sm.shape.getAt(shape):dot(vec), sm.shape.getUp(shape):dot(vec))
end

function getGlobal(shape, vec)
    return vec.x * sm.shape.getRight(shape) + vec.y * sm.shape.getAt(shape) + vec.z * sm.shape.getUp(shape)
end
