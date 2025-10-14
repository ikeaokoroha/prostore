/*
  Warnings:

  - You are about to drop the column `Price` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `Rating` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `Stock` on the `Product` table. All the data in the column will be lost.
  - Added the required column `stock` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Product" DROP COLUMN "Price",
DROP COLUMN "Rating",
DROP COLUMN "Stock",
ADD COLUMN     "price" DECIMAL(12,2) NOT NULL DEFAULT 0,
ADD COLUMN     "rating" DECIMAL(3,2) NOT NULL DEFAULT 0,
ADD COLUMN     "stock" INTEGER NOT NULL;
