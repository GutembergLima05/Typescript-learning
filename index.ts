import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

(async () => {
    const pessoas = await prisma.pessoa.findMany({
        select: {
            id_pessoa: true,
            email: true,
            nome: true,
            enderecos: true
        }
    })
    console.log(pessoas)
})();