function NN()
    lr = 1
    bias = 1
    weights = rand(1,3)
    for i = 1:50
        weights=Perceptron(1,1,1,weights,lr,bias)
        weights=Perceptron(1,0,1,weights,lr,bias)
        weights=Perceptron(0,1,1,weights,lr,bias)
        weights=Perceptron(0,0,0,weights,lr,bias)
    end
    x = 1
    y = 0
    outputP = x*weights(1) + y*weights(2) + bias*weights(3)
    if outputP > 0
        outputP = 1
    else
        outputP = 0
    end
    weights
    fprintf('%i or %i is %i\n',x,y,outputP)
end


