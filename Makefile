start:
	chmod +x setup/start.sh
	docker-compose up -d

bash:
	docker exec -it crypto-price-checker ash