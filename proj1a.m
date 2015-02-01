function f = proj1a(t,y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
proj1a = zeros(2,1);
proj1a(1) = .1.*(t+1)./((t+1).^2+y.^2)+(-.07).*t./(t.^2+y.^2)+(-.03).*(t-1)./((t-1).^2+y.^2)+1;
proj1a(2) = .1.*y./((t+1).^2+y.^2)+(-.07).*y./(t.^2+y.^2)+(-.03).*y./((t-1).^2+y.^2);  
end