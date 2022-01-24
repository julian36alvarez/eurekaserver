# eurekaserver


## Aquitectura de la solución

Se crearon tres microservicios definidos en la siguiente arquitectura.

![image](https://user-images.githubusercontent.com/31891276/150810041-f20217f4-bf37-45b7-9e62-063f895edfe0.png)


## Persistencia

cada microservicio tiene su propio schema.

![image](https://user-images.githubusercontent.com/31891276/150811023-77373d85-5750-41ee-af26-ba3edd65ae09.png)


# Pruebas

## Guardando un estudiante.

![image](https://user-images.githubusercontent.com/31891276/150811808-e483d721-cb1a-40ad-8389-4f97327d7ca0.png)


*request*

    {
        "name":"Julian",
        "lastName":"Alvarez",
        "identification": 123,
        "age":99,
        "school": "Slytherin"
    }
    
*response*    

    {
        "id": 1,
        "name": "Julian",
        "lastName": "Alvarez",
        "identification": 123,
        "age": 99,
        "inscription": {
            "id": 4,
            "idStudent": 123,
            "school": "Slytherin",
            "createAt": "2022-01-24T15:23:35.457+00:00"
        }
    }

### Validaciones del servicio

Se espera error 400 ya que no corresponde a una de las escuelas establecidas
Casa a la que aspira pertenecer (Solo 4 posibles opciones: "Gryffindor", "Hufflepuff","Ravenclaw", "Slytherin").

![image](https://user-images.githubusercontent.com/31891276/150812620-7143a1d0-f243-407a-af42-7c7b14d608ef.png)

Se espera error 400 ya que no tiene la longitud permitida en el name
![image](https://user-images.githubusercontent.com/31891276/150813010-6f5c07d4-09ab-4450-8505-4730575854b5.png)


Se espera error 400 ya que no tiene la longitud permitida en el lastname.
![image](https://user-images.githubusercontent.com/31891276/150813227-83a57c09-8b01-4975-901b-b809d0ff39d0.png)


Se espera error 400 ya que el campo Identificación  permite Solo números, máximo 10 dígitos
![image](https://user-images.githubusercontent.com/31891276/150813548-985be36b-b772-46a6-83a2-efc3d0c3c015.png)

Se espera error 400 ya que el campo Edad  permite  Solo números, máximo 2 dígitos
![image](https://user-images.githubusercontent.com/31891276/150813848-fe61f9b5-d910-4fc5-8ba9-eaf5f5f600ec.png)


por ultimo un nuevo ejemplo con el caso exitoso
![image](https://user-images.githubusercontent.com/31891276/150814006-3adbd294-ce8d-46cd-9f6d-ca40826861bb.png)



## Listando los estudiantes.

![image](https://user-images.githubusercontent.com/31891276/150814364-ee7a7234-f7b9-4802-827e-abc000e84305.png)


response

    [
        {
            "id": 1,
            "name": "Julian",
            "lastName": "Alvarez",
            "identification": 123,
            "age": 99,
            "inscription": {
                "id": 4,
                "idStudent": 123,
                "school": "Slytherin",
                "createAt": "2022-01-24T00:00:00.000+00:00"
            }
        },
        {
            "id": 2,
            "name": "Harry",
            "lastName": "potter",
            "identification": 15,
            "age": 10,
            "inscription": {
                "id": 5,
                "idStudent": 15,
                "school": "Hufflepuff",
                "createAt": "2022-01-24T00:00:00.000+00:00"
            }
        }
    ]

## Listando un estudiante por identificacion.

![image](https://user-images.githubusercontent.com/31891276/150814644-ccea7e27-f874-42cd-8b8b-654bc146bdb3.png)

## Eliminando un estudiante.

![image](https://user-images.githubusercontent.com/31891276/150814914-f918aec5-a06d-441b-a8ea-4b4a10768456.png)

se comprueba que no este el estudiante 

![image](https://user-images.githubusercontent.com/31891276/150814989-ce08442c-4771-4e94-9e9a-818b6b8719ea.png)

## Actualizando un estudiante.

request. 

    {
        "name":"Harry",
        "lastName":"Potter",
        "identification": 12,
        "age":15,
        "school": "Gryffindor"
    }

![image](https://user-images.githubusercontent.com/31891276/150815403-19c93872-f687-4d69-8433-cef3f7c1ded5.png)

![image](https://user-images.githubusercontent.com/31891276/150815623-f56e01ac-e99c-44ef-907c-e762899bc8e0.png)


validaciones dentro del update  
![image](https://user-images.githubusercontent.com/31891276/150815585-24915d4b-a96a-47d3-a6ca-ae0364d38c3b.png)


# Eureka server microservicio

![image](https://user-images.githubusercontent.com/31891276/150816489-5de4a307-0ef0-474d-9612-960d820aac65.png)

