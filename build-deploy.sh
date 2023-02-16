echo "Hi!"
minikube image build -t pramarda/athlete .
echo ""
kubectl apply -f app-service.yaml
echo ""
kubectl apply -f app-deployment.yaml
echo ""
kubectl apply -f ingress.yaml
echo "Please wait....(approx 1 min.)"
echo ""
sleep 60
kubectl get ingress 
echo ""
echo "In your browser goto <<  local-arcesium-org.A.B.C.D.nip.io/athlete  >>,"
echo "Or enter command : curl local-arcesium-org.A.B.C.D.nip.io/athlete"
echo "where A.B.C.D is the above ADDRESS"
echo ""
