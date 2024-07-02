-- CreateTable
CREATE TABLE "Pessoa" (
    "id_pessoa" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "nome" TEXT
);

-- CreateTable
CREATE TABLE "Endereco" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "rua" TEXT NOT NULL,
    "pessoaId_pessoa" INTEGER,
    CONSTRAINT "Endereco_pessoaId_pessoa_fkey" FOREIGN KEY ("pessoaId_pessoa") REFERENCES "Pessoa" ("id_pessoa") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Pessoa_email_key" ON "Pessoa"("email");
