function Value = likelihood_grad_D(image, albedo, depth)
    D= -1.0.*repmat(depth,1,1,size(albedo,3));
    I_est = albedo.*exp(D)+(1-exp(D));
    diff = I_est-image;
    Value = sum((-2.0.*(albedo-1).*exp(D).*diff),3);
end