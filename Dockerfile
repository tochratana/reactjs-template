# 1. Foundamental Instruction
FROM node: 22-alpine

# 2. Configuration Instruction
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# Document which port container run 
EXPOSE 3000

# 3. Execution Instruction
CMD ["npm", "start"]