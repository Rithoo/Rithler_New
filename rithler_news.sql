-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : sam. 30 avr. 2022 à 21:10
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rithler_news`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE DATABASE IF NOT EXISTS rithler_news ;
USE rithler_news ;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `publication` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `id_user` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(5) NOT NULL,
  `commentaire` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `id_article` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `adresse`, `email`, `password`) VALUES
(1, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'josephjoberno@gmail.com', '$2y$10$OyNLjq9ZWbz4zaY61c8n3eWW1EvlbuAuCA5or50Xv7xvbjGgfplMm'),
(4, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'up@gmail.com', '$2y$10$sVc95DW4MwHQWS0xWbiFFu5IMKLvsB5PNU8VM/nGHCo6S3wjXhSmu'),
(5, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'up12@gmail.com', '$2y$10$vaSdzMPTOYOm9oCqCLWfZ.Nyg/xqAlaMGm1/a2dr1VrrDQHWIH5dq'),
(6, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'jjsjsj@gmail.com', '$2y$10$61rZO/T1eowCmhWQ/i6Cd.NOr27Rc1AqnYIjTKm94HDaUiIBEcXWm'),
(7, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'dhdhdhdh@gmail.com', '$2y$10$RjqIIFrMIPdvt6uAxTreaOBqKH6wMIgsULJLvFKo.KmlqsVhob8X2'),
(8, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'dhdhdh@gmail.com', '$2y$10$2HbIk4/1zTYCr2tZVbZCteAPOv71udrWV0qDK99S/w1YEHSrqggiC'),
(9, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'hdhshddh@gmail.com', '$2y$10$HR8EBQmMQeiblvtFMCFXuOivrgkV81SIAqztiuAAeh037xlSoxiVG'),
(10, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'hshsh@gmail.com', '$2y$10$vVlwuLLvdYpEhFTvEolrreTnFI3xEXDPQG2C91FChnOMGSMQdl1OO'),
(11, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'hdhdh@gmail.com', '$2y$10$X/rXAa1JMqyQhl3dmKYE6.o2GM2oaqt4PoX2QKfyauQLyo9kJYxe2'),
(12, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'jdjdhdh@gmail.com', '$2y$10$8g7mIF6YSIc0IFJNJp2tA.Hn5Xm4KGyLHH8gbFPc3HuyXByMpEmUW'),
(13, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'hdhdhdhdg@gmail.com', '$2y$10$G3y7cedCmkh7CEJt4yO2duaFTtJsFJUExhELbfnGuNystlmwSw3Wm'),
(14, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'hdhhdgdg@gmail.com', '$2y$10$6Z1iG4pDLOWq9GZdpN7jGeR.P1BpQbvxnBvAZZCHb5oE1n/Us9gSC'),
(15, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'hgg@gmail.com', '$2y$10$rLOQVP1R2wXFtz6UjogfX.qW3xxHqCM6u4ficHfl0zz0P6yWwAV5.'),
(16, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'fjfjfjfjff@gmail.com', '$2y$10$FTVV1.AGfi9sdiHXZC5NgOU92Kl7gAs/cLVa9uXPDXLmNzp5KzviK'),
(17, 'Joberno Birlado', 'Joseph', 'Fermathe 45 &amp;agrave; l\'interieur rte de Cazeau', 'vvv@gmail.com', '$2y$10$oYIDmVofNMm3upQQIqvNVuWmbcVKT/dUJKcRhMv4IaarjiADvZymG');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_user` (`id_user`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_article` (`id_article`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `FK_id_article` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
