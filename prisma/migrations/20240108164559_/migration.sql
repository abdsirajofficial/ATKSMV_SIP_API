-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `role` VARCHAR(191) NULL DEFAULT 'User',
    `status` VARCHAR(191) NULL DEFAULT 'Active',
    `userId` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `password` VARCHAR(191) NULL,
    `DOB` VARCHAR(191) NULL,
    `aadhar` VARCHAR(191) NULL,
    `pan` VARCHAR(191) NULL,
    `mobile` VARCHAR(191) NULL,
    `secondary_mobile` VARCHAR(191) NULL,
    `address` VARCHAR(191) NULL,
    `account_no` VARCHAR(191) NULL,
    `upi_id` VARCHAR(191) NULL,
    `account_holder` VARCHAR(191) NULL,
    `IFSC` VARCHAR(191) NULL,
    `amount` INTEGER NULL,
    `return` INTEGER NULL,
    `createdOn` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedOn` DATETIME(3) NOT NULL,

    UNIQUE INDEX `User_userId_key`(`userId`),
    UNIQUE INDEX `User_email_key`(`email`),
    UNIQUE INDEX `User_mobile_key`(`mobile`),
    UNIQUE INDEX `User_secondary_mobile_key`(`secondary_mobile`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `nominee` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `aadhar` VARCHAR(191) NULL,
    `pan` VARCHAR(191) NULL,
    `mobile` VARCHAR(191) NULL,
    `account_no` VARCHAR(191) NULL,
    `upi_id` VARCHAR(191) NULL,
    `account_holder` VARCHAR(191) NULL,
    `IFSC` VARCHAR(191) NULL,
    `userId` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `nominee_userId_key`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `monthpackages` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `packId` VARCHAR(191) NOT NULL,
    `amount` INTEGER NOT NULL,
    `years` INTEGER NOT NULL,
    `returns` INTEGER NOT NULL,
    `createdOn` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedOn` DATETIME(3) NOT NULL,

    UNIQUE INDEX `monthpackages_packId_key`(`packId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `anunualPackages` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `packId` VARCHAR(191) NOT NULL,
    `amount` INTEGER NOT NULL,
    `years` INTEGER NOT NULL,
    `returns` INTEGER NOT NULL,
    `createdOn` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedOn` DATETIME(3) NOT NULL,

    UNIQUE INDEX `anunualPackages_packId_key`(`packId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transaction` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `amount` INTEGER NULL,
    `transId` VARCHAR(191) NULL,
    `packId` VARCHAR(191) NOT NULL,
    `count` INTEGER NULL,
    `status` VARCHAR(191) NULL DEFAULT 'Pending',
    `createdOn` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedOn` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `withdrawal` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `amount` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL DEFAULT 'Pending',
    `createdOn` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedOn` DATETIME(3) NOT NULL,

    UNIQUE INDEX `withdrawal_userId_key`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `history` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `amount` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL DEFAULT 'success',
    `createdOn` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedOn` DATETIME(3) NOT NULL,

    UNIQUE INDEX `history_userId_key`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `nominee` ADD CONSTRAINT `nominee_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;
