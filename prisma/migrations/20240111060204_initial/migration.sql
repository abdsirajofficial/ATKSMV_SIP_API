/*
  Warnings:

  - Added the required column `packType` to the `transaction` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `history` MODIFY `status` VARCHAR(191) NOT NULL DEFAULT 'Success';

-- AlterTable
ALTER TABLE `transaction` ADD COLUMN `packType` VARCHAR(191) NOT NULL;
