# README
seguinte minha altarquia, logo abaixo vou te passar as end-points de todo o projeto, junto com um body de exemplo pra cada um dos end-points que precisarão de um 

********************************USER****************************
METODO               END-POINT

 GET         	/api/v1/user      (index)
POST 	        /api/v1/user      (create)
GET 	        /api/v1/user/:id  (show)
PATCH 	      /api/v1/user/:id  (edit)
PUT 	        /api/v1/user/:id  (edit)
DELETE 	      /api/v1/user/:id  (delete)

Para os metodos que precisarão de um body, tu vai usar esse modelo aqui:

{
 user:{
      "nome": "exemplo de nome",
      "senha": "exemplo de senha",
      "email": "exemplo de email",
      "cpf": "exemplo de cpf"        
      }
}

********************************VISIT****************************
METODO               END-POINT

 GET         	/api/v1/user/user_id/visit      (index)
POST 	        /api/v1/user/user_id/visit      (create)
GET 	        /api/v1/user/user_id/visit/:id  (show)
PATCH 	      /api/v1/user/user_id/visit/:id  (edit)
PUT 	        /api/v1/user/user_id/visit/:id  (edit)
DELETE 	      /api/v1/user/user_id/visit/:id  (delete)
ex
Para os metodos que precisarão de um body, tu vai usar esse modelo aqui:

{
 visit:{
        "data": "exemplo de data",
        "status": "um dos tres status aqui",
        "checkin_at": "a data do checkin",
        "checkout_at": "a data do checkout"        
        }
}

********************************FORMULARY****************************
METODO               END-POINT

 GET         	/api/v1/formulary      (index)
POST 	        /api/v1/formulary      (create)
GET 	        /api/v1/formulary/:id  (show)
PATCH 	      /api/v1/formulary/:id  (edit)
PUT 	        /api/v1/formulary/:id  (edit)
DELETE 	      /api/v1/formulary/:id  (delete)
ex
Para os metodos que precisarão de um body, tu vai usar esse modelo aqui:

{
 formulary:{
            "nome": "exemplo de nome",        
           }
}


********************************QUESTION****************************
METODO               END-POINT

 GET         	/api/v1/formulary/formulary_id/question      (index)
POST 	        /api/v1/formulary/formulary_id/question      (create)
GET 	        /api/v1/formulary/formulary_id/question/:id  (show)
PATCH 	      /api/v1/formulary/formulary_id/question/:id  (edit)
PUT 	        /api/v1/formulary/formulary_id/question/:id  (edit)
DELETE 	      /api/v1/formulary/formulary_id/question/:id  (delete)
ex
Para os metodos que precisarão de um body, tu vai usar esse modelo aqui:

{
 question:{
            "nome": "exemplo de nome",
            "tp_pergunta": "pergunta ou url de uma foto"    
          }
}


********************************ANSWER****************************
METODO               END-POINT

 GET         	/api/v1/visit/visit_id/formulary/formulary_id/question/question_id/answer      (index)
POST 	        /api/v1/visit/visit_id/formulary/formulary_id/question/question_id/answer      (create)
GET 	        /api/v1/visit/visit_id/formulary/formulary_id/question/question_id/answer/:id  (show)
PATCH 	      /api/v1/visit/visit_id/formulary/formulary_id/question/question_id/answer/:id  (edit)
PUT 	        /api/v1/visit/visit_id/formulary/formulary_id/question/question_id/answer/:id  (edit)
DELETE 	      /api/v1/visit/visit_id/formulary/formulary_id/question/question_id/answer/:id  (delete)
ex
Para os metodos que precisarão de um body, tu vai usar esse modelo aqui:

{
 answer:{
            "content": "o conteudo da resposta",
            "answered_at": "a data da formulaçao da resposta"    
        }
}

acho q é so isso q tu precisa saber pra botar pra moer no postman.
