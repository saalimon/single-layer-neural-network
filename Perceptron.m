function weights = Perceptron(input1,input2, output,weights,lr,bias)
    outputP = input1*weights(1)+input2*weights(2)+bias*weights(3)
    if  outputP > 0
        outputP = 1
    else
        outputP = 0
    end
    error = output - outputP
    weights(1) = weights(1) + (error*input1*lr)
    weights(2) = weights(2) + (error*input2*lr)
    weights(3) = weights(3) + (error*bias*lr)
end