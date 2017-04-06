-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2017 at 08:55 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `includes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `built_forms`
--

CREATE TABLE `built_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `show_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `rendered` text COLLATE utf8_unicode_ci NOT NULL,
  `redirect_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extra_code` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `built_forms`
--

INSERT INTO `built_forms` (`id`, `name`, `hash`, `category`, `description`, `show_captcha`, `data`, `rendered`, `redirect_to`, `extra_code`, `email`, `created_at`, `updated_at`) VALUES
(8, 'Client Data', '', 1, '', 0, '[{"title":"Form Name","fields":{"name":{"label":"Form Name","type":"input","value":"Client Data","name":"name"}}},{"title":"Text Input","fields":{"id":{"label":"ID / Name","type":"input","value":"client32nn","name":"id"},"label":{"label":"Label Text","type":"input","value":"Client Name","name":"label"},"placeholder":{"label":"Placeholder","type":"input","value":"","name":"placeholder"},"helptext":{"label":"Help Text","type":"input","value":"","name":"helptext"},"required":{"label":"Required","type":"checkbox","value":false,"name":"required"},"inputsize":{"label":"Input Size","type":"select","value":[{"value":"input-mini","selected":false,"label":"Mini"},{"value":"input-small","selected":false,"label":"Small"},{"value":"input-medium","selected":false,"label":"Medium"},{"value":"input-large","selected":false,"label":"Large"},{"value":"input-xlarge","selected":true,"label":"Xlarge"},{"value":"input-xxlarge","selected":false,"label":"Xxlarge"}],"name":"inputsize"}}},{"title":"Text Area","fields":{"id":{"label":"ID / Name","type":"input","value":"clientaddress9mm","name":"id"},"label":{"label":"Label Text","type":"input","value":"Address","name":"label"},"textarea":{"label":"Starting Text","type":"textarea","value":"","name":"textarea"}}},{"title":"Text Input","fields":{"id":{"label":"ID / Name","type":"input","value":"phone8089","name":"id"},"label":{"label":"Label Text","type":"input","value":"Phone","name":"label"},"placeholder":{"label":"Placeholder","type":"input","value":"","name":"placeholder"},"helptext":{"label":"Help Text","type":"input","value":"","name":"helptext"},"required":{"label":"Required","type":"checkbox","value":false,"name":"required"},"inputsize":{"label":"Input Size","type":"select","value":[{"value":"input-mini","selected":false,"label":"Mini"},{"value":"input-small","selected":false,"label":"Small"},{"value":"input-medium","selected":false,"label":"Medium"},{"value":"input-large","selected":false,"label":"Large"},{"value":"input-xlarge","selected":true,"label":"Xlarge"},{"value":"input-xxlarge","selected":false,"label":"Xxlarge"}],"name":"inputsize"}}},{"title":"Text Input","fields":{"id":{"label":"ID / Name","type":"input","value":"email232","name":"id"},"label":{"label":"Label Text","type":"input","value":"Email ","name":"label"},"placeholder":{"label":"Placeholder","type":"input","value":"","name":"placeholder"},"helptext":{"label":"Help Text","type":"input","value":"","name":"helptext"},"required":{"label":"Required","type":"checkbox","value":false,"name":"required"},"inputsize":{"label":"Input Size","type":"select","value":[{"value":"input-mini","selected":false,"label":"Mini"},{"value":"input-small","selected":false,"label":"Small"},{"value":"input-medium","selected":false,"label":"Medium"},{"value":"input-large","selected":false,"label":"Large"},{"value":"input-xlarge","selected":true,"label":"Xlarge"},{"value":"input-xxlarge","selected":false,"label":"Xxlarge"}],"name":"inputsize"}}},{"title":"Text Input","fields":{"id":{"label":"ID / Name","type":"input","value":"website9808","name":"id"},"label":{"label":"Label Text","type":"input","value":"Website","name":"label"},"placeholder":{"label":"Placeholder","type":"input","value":"","name":"placeholder"},"helptext":{"label":"Help Text","type":"input","value":"","name":"helptext"},"required":{"label":"Required","type":"checkbox","value":false,"name":"required"},"inputsize":{"label":"Input Size","type":"select","value":[{"value":"input-mini","selected":false,"label":"Mini"},{"value":"input-small","selected":false,"label":"Small"},{"value":"input-medium","selected":false,"label":"Medium"},{"value":"input-large","selected":false,"label":"Large"},{"value":"input-xlarge","selected":true,"label":"Xlarge"},{"value":"input-xxlarge","selected":false,"label":"Xxlarge"}],"name":"inputsize"}}},{"title":"Select Basic","fields":{"id":{"label":"ID / Name","type":"input","value":"country009ms","name":"id"},"label":{"label":"Label Text","type":"input","value":"Country","name":"label"},"options":{"label":"Options","type":"textarea-split","value":["Bangladesh","Malaysia","Singapore","USA","Canada","Australia","UK","Japan"],"name":"options"},"inputsize":{"label":"Input Size","type":"select","value":[{"value":"input-mini","selected":false,"label":"Mini"},{"value":"input-small","selected":false,"label":"Small"},{"value":"input-medium","selected":false,"label":"Medium"},{"value":"input-large","selected":false,"label":"Large"},{"value":"input-xlarge","selected":true,"label":"Xlarge"},{"value":"input-xxlarge","selected":false,"label":"Xxlarge"}],"name":"inputsize"}}},{"title":"Multiple Radios","fields":{"name":{"label":"Group Name","type":"input","value":"status98nm","name":"name"},"label":{"label":"Label Text","type":"input","value":"Status","name":"label"},"required":{"label":"Required","type":"checkbox","value":false,"name":"required"},"radios":{"label":"Radios","type":"textarea-split","value":["Active","Inactive"],"name":"radios"}}},{"title":"Single Button","fields":{"id":{"label":"ID / Name","type":"input","value":"singlebutton44d","name":"id"},"label":{"label":"Label Text","type":"input","value":"","name":"label"},"buttonlabel":{"label":"Button Label","type":"input","value":"Submit","name":"buttonlabel"},"buttontype":{"label":"Button Type","type":"select","value":[{"value":"btn-default","selected":false,"label":"Default"},{"value":"btn-primary","selected":true,"label":"Primary"},{"value":"btn-info","selected":false,"label":"Info"},{"value":"btn-success","selected":false,"label":"Success"},{"value":"btn-warning","selected":false,"label":"Warning"},{"value":"btn-danger","selected":false,"label":"Danger"},{"value":"btn-inverse","selected":false,"label":"Inverse"}],"name":"buttontype"}}}]', '<form class="form-horizontal">\n<fieldset>\n\n<!-- Form Name -->\n<legend>Client Data</legend>\n\n<!-- Text input-->\n<div class="control-group">\n<label class="control-label" for="client32nn">Client Name</label>\n<div class="controls">\n<input id="client32nn" name="client32nn" type="text" placeholder="" class="input-xlarge">\n\n</div>\n</div>\n\n<!-- Textarea -->\n<div class="control-group">\n<label class="control-label" for="clientaddress9mm">Address</label>\n<div class="controls">                     \n<textarea id="clientaddress9mm" name="clientaddress9mm"></textarea>\n</div>\n</div>\n\n<!-- Text input-->\n<div class="control-group">\n<label class="control-label" for="phone8089">Phone</label>\n<div class="controls">\n<input id="phone8089" name="phone8089" type="text" placeholder="" class="input-xlarge">\n\n</div>\n</div>\n\n<!-- Text input-->\n<div class="control-group">\n<label class="control-label" for="email232">Email </label>\n<div class="controls">\n<input id="email232" name="email232" type="text" placeholder="" class="input-xlarge">\n\n</div>\n</div>\n\n<!-- Text input-->\n<div class="control-group">\n<label class="control-label" for="website9808">Website</label>\n<div class="controls">\n<input id="website9808" name="website9808" type="text" placeholder="" class="input-xlarge">\n\n</div>\n</div>\n\n<!-- Select Basic -->\n<div class="control-group">\n<label class="control-label" for="country009ms">Country</label>\n<div class="controls">\n<select id="country009ms" name="country009ms" class="input-xlarge">\n<option>Bangladesh</option>\n<option>Malaysia</option>\n<option>Singapore</option>\n<option>USA</option>\n<option>Canada</option>\n<option>Australia</option>\n<option>UK</option>\n<option>Japan</option>\n</select>\n</div>\n</div>\n\n<!-- Multiple Radios -->\n<div class="control-group">\n<label class="control-label" for="status98nm">Status</label>\n<div class="controls">\n<label class="radio" for="status98nm-0">\n<input type="radio" name="status98nm" id="status98nm-0" value="Active" checked="checked">\nActive\n</label>\n<label class="radio" for="status98nm-1">\n<input type="radio" name="status98nm" id="status98nm-1" value="Inactive">\nInactive\n</label>\n</div>\n</div>\n\n<!-- Button -->\n<div class="control-group">\n<label class="control-label" for="singlebutton44d"></label>\n<div class="controls">\n<button id="singlebutton44d" name="singlebutton44d" class="btn btn-primary">Submit</button>\n</div>\n</div>\n\n</fieldset>\n</form>\n', 'list', '', '', '2014-03-27 23:18:25', '2014-03-27 23:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `built_modules`
--

CREATE TABLE `built_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `form_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_fields` text COLLATE utf8_unicode_ci,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `models` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requires` text COLLATE utf8_unicode_ci,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_author` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `built_modules`
--

INSERT INTO `built_modules` (`id`, `name`, `hash`, `version`, `author`, `vendor`, `website`, `description`, `form_id`, `form_fields`, `target`, `file`, `models`, `requires`, `table_name`, `is_author`, `is_visible`, `created_at`, `updated_at`) VALUES
(3, 'Test Module', '', '1', 'Andrew', NULL, 'http://www.doptor.org', '', '8', NULL, 'admin', '/home/tngbdcom/public_html/cms/app/storage/temp/test_module.zip', NULL, NULL, 'testing_form', 1, 1, '2014-03-22 00:20:16', '2014-03-22 00:20:16'),
(4, 'Company Info', 'module_55ad0a9988993', '1.0', 'Doptor', 'Doptor', 'http://doptor.net', NULL, '', '[{"name": "Name", "reg_no": "Registration Number", "logo": "Logo", "address": "Address", "website": "Website", "phone": "Phone", "email": "Email", "address": "Address"}, {"name": "Name", "reg_no": "Registration Number", "address": "Address", "website": "Website", "phone": "Phone", "fax": "Fax", "mobile": "Mobile", "email": "Email"} ]', 'public|admin|backend', '', '{"Company": "Companies", "CompanyBranch": "Company Branches"}', NULL, '', 1, 0, '2017-04-05 00:32:08', '2017-04-05 00:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `built_reports`
--

CREATE TABLE `built_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modules` text COLLATE utf8_unicode_ci,
  `show_calendars` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'published',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `alias`, `type`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'First Category', 'first-category', 'post', 'Lorem Ipsum', 'published', 1, NULL, '2014-03-29 15:45:00', '2014-03-29 15:45:00'),
(2, 'Another Category', 'another-category', 'page', 'Lorem Ipsum', 'published', 1, NULL, '2014-03-29 15:45:00', '2014-03-29 15:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 7),
(7, 1, 8),
(8, 3, 13);

-- --------------------------------------------------------

--
-- Table structure for table `contact_categories`
--

CREATE TABLE `contact_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'published',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `display_options` text COLLATE utf8_unicode_ci,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_emails`
--

CREATE TABLE `contact_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_categories`
--

CREATE TABLE `form_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `form_categories`
--

INSERT INTO `form_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', '2014-03-20 20:55:03', '2014-03-20 20:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `form_entries`
--

CREATE TABLE `form_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrators', '{"superuser":1}', '2017-04-05 00:31:49', '2017-04-05 00:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `group_menu`
--

CREATE TABLE `group_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_menu`
--

INSERT INTO `group_menu` (`id`, `group_id`, `menu_id`) VALUES
(2, 2, 11),
(3, 1, 11),
(4, 1, 33),
(5, 2, 33),
(6, 1, 37),
(7, 1, 38);

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'cms', 'error', 'Error!', '2017-04-05 00:31:53', '2017-04-05 00:31:53'),
(2, 1, 'en', 'cms', 'success', 'Success!', '2017-04-05 00:31:53', '2017-04-05 00:31:53'),
(3, 1, 'en', 'cms', 'welcome', 'Welcome', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(4, 1, 'en', 'cms', 'home', 'Home', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(5, 1, 'en', 'cms', 'backend_dashboard', 'Backend Dashboard', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(6, 1, 'en', 'cms', 'admin_dashboard', 'Admin Dashboard', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(7, 1, 'en', 'cms', 'public', 'Public', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(8, 1, 'en', 'cms', 'admin', 'Admin', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(9, 1, 'en', 'cms', 'profile', 'Profile', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(10, 1, 'en', 'cms', 'backup-and-restore', 'Backup & Restore', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(11, 1, 'en', 'cms', 'backup', 'Backup', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(12, 1, 'en', 'cms', 'restore', 'Restore', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(13, 1, 'en', 'cms', 'builders', 'Builders', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(14, 1, 'en', 'cms', 'categories', 'Categories', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(15, 1, 'en', 'cms', 'category', 'Category', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(16, 1, 'en', 'cms', 'contact_categories', 'Contact Categories', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(17, 1, 'en', 'cms', 'contact_category', 'Contact Category', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(18, 1, 'en', 'cms', 'contact_manager', 'Contact Manager', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(19, 1, 'en', 'cms', 'dashboard', 'Dashboard', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(20, 1, 'en', 'cms', 'extensions', 'Extensions', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(21, 1, 'en', 'cms', 'form_builder', 'Form Builder', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(22, 1, 'en', 'cms', 'form_categories', 'Form Categories', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(23, 1, 'en', 'cms', 'form_category', 'Form Category', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(24, 1, 'en', 'cms', 'media_manager', 'Media Manager', '2017-04-05 00:31:54', '2017-04-05 00:31:54'),
(25, 1, 'en', 'cms', 'menu_categories', 'Menu Categories', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(26, 1, 'en', 'cms', 'menu_category', 'Menu Category', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(27, 1, 'en', 'cms', 'menu_entries', 'Menu Entries', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(28, 1, 'en', 'cms', 'menu_entry', 'Menu Entry', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(29, 1, 'en', 'cms', 'menu_manager', 'Menu Manager', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(30, 1, 'en', 'cms', 'menu_position', 'Menu Position', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(31, 1, 'en', 'cms', 'menu_positions', 'Menu Positions', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(32, 1, 'en', 'cms', 'module', 'Module', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(33, 1, 'en', 'cms', 'module_builder', 'Module Builder', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(34, 1, 'en', 'cms', 'modules', 'Modules', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(35, 1, 'en', 'cms', 'page', 'Page', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(36, 1, 'en', 'cms', 'page_categories', 'Page Categories', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(37, 1, 'en', 'cms', 'page_category', 'Page Category', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(38, 1, 'en', 'cms', 'pages', 'Pages', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(39, 1, 'en', 'cms', 'post', 'Post', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(40, 1, 'en', 'cms', 'post_categories', 'Post Categories', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(41, 1, 'en', 'cms', 'post_category', 'Post Category', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(42, 1, 'en', 'cms', 'posts', 'Posts', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(43, 1, 'en', 'cms', 'report_builder', 'Report Builder', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(44, 1, 'en', 'cms', 'report_builders', 'Report Builders', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(45, 1, 'en', 'cms', 'report_generator', 'Report Generator', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(46, 1, 'en', 'cms', 'report_generators', 'Report Generators', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(47, 1, 'en', 'cms', 'theme_settings', 'Theme Settings', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(48, 1, 'en', 'cms', 'settings', 'Settings', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(49, 1, 'en', 'cms', 'slideshow', 'Slideshow', '2017-04-05 00:31:55', '2017-04-05 00:31:55'),
(50, 1, 'en', 'cms', 'synchronize', 'Synchronize', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(51, 1, 'en', 'cms', 'theme_manager', 'Theme Manager', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(52, 1, 'en', 'cms', 'translation_manager', 'Translation Manager', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(53, 1, 'en', 'cms', 'translations', 'Translations', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(54, 1, 'en', 'cms', 'user_groups', 'User Groups', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(55, 1, 'en', 'cms', 'user_manager', 'User Manager', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(56, 1, 'en', 'cms', 'users', 'Users', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(57, 1, 'en', 'cms', 'all_entries', 'All Entries', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(58, 1, 'en', 'cms', 'user_info', 'User Information', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(59, 1, 'en', 'cms', 'user_group', 'User Group', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(60, 1, 'en', 'cms', 'create_backup', 'Create Backup', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(61, 1, 'en', 'cms', 'restore_backup', 'Restore Backup', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(62, 1, 'en', 'config', 'website_config', 'Website Configuration', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(63, 1, 'en', 'config', 'basic_settings', 'Basic Settings', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(64, 1, 'en', 'config', 'theme_settings', 'Theme Settings', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(65, 1, 'en', 'config', 'security_settings', 'Security Settings', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(66, 1, 'en', 'config', 'company_details', 'Company Details', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(67, 1, 'en', 'config', 'social_media_links', 'Social Media Links', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(68, 1, 'en', 'config', 'offline_settings', 'Offline Settings', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(69, 1, 'en', 'config', 'email_settings', 'Email Settings', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(70, 1, 'en', 'config', 'website_name', 'Website Name', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(71, 1, 'en', 'config', 'website_logo', 'Website Logo', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(72, 1, 'en', 'config', 'footer_text', 'Footer Text', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(73, 1, 'en', 'config', 'language', 'Language', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(74, 1, 'en', 'config', 'backend_theme', 'Backend Theme', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(75, 1, 'en', 'config', 'admin_theme', 'Admin Theme', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(76, 1, 'en', 'config', 'public_theme', 'Public Theme', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(77, 1, 'en', 'config', 'auto_logout_time', 'Auto Logout Time', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(78, 1, 'en', 'config', 'ip_address_to_disable', 'IP address(es) to disable access to', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(79, 1, 'en', 'config', 'company_name', 'Company Name', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(80, 1, 'en', 'config', 'company_address', 'Company Address', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(81, 1, 'en', 'config', 'company_contact', 'Company Contact', '2017-04-05 00:31:56', '2017-04-05 00:31:56'),
(82, 1, 'en', 'config', 'facebook_link', 'Facebook Link', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(83, 1, 'en', 'config', 'twitter_link', 'Twitter Link', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(84, 1, 'en', 'config', 'google_plus_link', 'Google Plus Link', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(85, 1, 'en', 'config', 'set_public_offline', 'Set Public Offline?', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(86, 1, 'en', 'config', 'set_public_offline_till', 'Set Public Offline Till', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(87, 1, 'en', 'config', 'set_admin_offline', 'Set Admin Offline?', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(88, 1, 'en', 'config', 'set_admin_offline_till', 'Set Admin Offline Till', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(89, 1, 'en', 'config', 'offline_message', 'Offline Message', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(90, 1, 'en', 'config', 'email_host', 'Email Host', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(91, 1, 'en', 'config', 'email_port', 'Email Port', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(92, 1, 'en', 'config', 'email_encryption', 'Email Encryption', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(93, 1, 'en', 'config', 'email_username', 'Email Username', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(94, 1, 'en', 'config', 'email_password', 'Email Password', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(95, 1, 'en', 'config', 'offline_leave_blank', 'Leave blank to set offline until specified otherwise', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(96, 1, 'en', 'config', 'time_in_min', 'Time in minutes. Leave blank or set 0 to use default time.', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(97, 1, 'en', 'config', 'separate_address', 'Optional. Separate addresses with a space', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(98, 1, 'en', 'config', 'security_question', 'Security Question', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(99, 1, 'en', 'config', 'security_answer', 'Security Answer', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(100, 1, 'en', 'datatable', 'sEmptyTable', 'No data available in table', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(101, 1, 'en', 'datatable', 'sInfo', 'Showing _START_ to _END_ of _TOTAL_ entries', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(102, 1, 'en', 'datatable', 'sInfoEmpty', 'Showing 0 to 0 of 0 entries', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(103, 1, 'en', 'datatable', 'sInfoFiltered', '(filtered from _MAX_ total entries)', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(104, 1, 'en', 'datatable', 'sLengthMenu', 'Show _MENU_ entries', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(105, 1, 'en', 'datatable', 'sLoadingRecords', 'Loading...', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(106, 1, 'en', 'datatable', 'sProcessing', 'Processing...', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(107, 1, 'en', 'datatable', 'sSearch', 'Search:', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(108, 1, 'en', 'datatable', 'sZeroRecords', 'No matching records found', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(109, 1, 'en', 'datatable', 'oPaginate.sFirst', 'First', '2017-04-05 00:31:57', '2017-04-05 00:31:57'),
(110, 1, 'en', 'datatable', 'oPaginate.sLast', 'Last', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(111, 1, 'en', 'datatable', 'oPaginate.sNext', 'Next', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(112, 1, 'en', 'datatable', 'oPaginate.sPrevious', 'Previous', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(113, 1, 'en', 'datatable', 'oAria.sSortAscending', ': activate to sort column ascending', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(114, 1, 'en', 'datatable', 'oAria.sSortDescending', ': activate to sort column descending', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(115, 1, 'en', 'errors', '401.message', 'Unauthorized Access', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(116, 1, 'en', 'errors', '401.sub_message', 'User doesn''t have sufficient permission. Please contact our administrator.', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(117, 1, 'en', 'errors', '404.message', 'Oops, You''re lost', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(118, 1, 'en', 'errors', '404.sub_message', 'We can not find the page you''re looking for.<br /> Is there a typo in the url?', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(119, 1, 'en', 'errors', '500.message', 'Oops, Something went wrong', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(120, 1, 'en', 'errors', '500.sub_message', 'We are fixing it!<br /> Please come back in a while.<br />', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(121, 1, 'en', 'errors', 'form_errors', 'You have some form errors. Please check below', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(122, 1, 'en', 'errors', 'short_password', 'The Password is too short', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(123, 1, 'en', 'errors', 'password_username_same', 'Your password cannot be the same as your username', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(124, 1, 'en', 'error_messages', 'backup_delete', 'The backup file wasn''t deleted', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(125, 1, 'en', 'error_messages', 'cant_disable_ip', 'Current IP address cannot be disabled access', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(126, 1, 'en', 'error_messages', 'company_branch_create', 'The company branch wasn''t created', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(127, 1, 'en', 'error_messages', 'company_branch_delete', 'The company branch wasn''t deleted', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(128, 1, 'en', 'error_messages', 'company_branch_update', 'The company branch wasn''t updated', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(129, 1, 'en', 'error_messages', 'company_create', 'The company wasn''t created', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(130, 1, 'en', 'error_messages', 'company_delete', 'The company wasn''t deleted', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(131, 1, 'en', 'error_messages', 'company_update', 'The company wasn''t updated', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(132, 1, 'en', 'error_messages', 'contact_cat_create', 'The contact category wasn''t created', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(133, 1, 'en', 'error_messages', 'contact_cat_delete', 'The contact category wasn''t deleted', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(134, 1, 'en', 'error_messages', 'contact_cat_update', 'The contact category wasn''t updated', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(135, 1, 'en', 'error_messages', 'contact_create', 'The contact wasn''t created', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(136, 1, 'en', 'error_messages', 'contact_delete', 'The contact wasn''t deleted', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(137, 1, 'en', 'error_messages', 'contact_update', 'The contact wasn''t updated', '2017-04-05 00:31:58', '2017-04-05 00:31:58'),
(138, 1, 'en', 'error_messages', 'contacts_delete', 'The contacts were deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(139, 1, 'en', 'error_messages', 'entry_create', 'The entry wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(140, 1, 'en', 'error_messages', 'entry_delete', 'The entry wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(141, 1, 'en', 'error_messages', 'entry_update', 'The entry wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(142, 1, 'en', 'error_messages', 'form_cat_create', 'The form category wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(143, 1, 'en', 'error_messages', 'form_cat_delete', 'The form category wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(144, 1, 'en', 'error_messages', 'form_cat_delete_assoc', 'The form can''t be deleted because a built module is using this form. <br> Either change the form in that built module or delete the module first to delete this form.', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(145, 1, 'en', 'error_messages', 'form_cat_update', 'The form category wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(146, 1, 'en', 'error_messages', 'form_create', 'The form wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(147, 1, 'en', 'error_messages', 'form_delete', 'The form wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(148, 1, 'en', 'error_messages', 'form_found', 'Form not found', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(149, 1, 'en', 'error_messages', 'form_update', 'The form wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(150, 1, 'en', 'error_messages', 'menu_cat_create', 'The menu category wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(151, 1, 'en', 'error_messages', 'menu_cat_delete', 'The menu category wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(152, 1, 'en', 'error_messages', 'menu_cat_delete_assoc', 'The menu category can''t be deleted because one or more menu belong to this category. <br> Either change the menu category in those menu(s) or delete the menu(s) first to delete this menu.', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(153, 1, 'en', 'error_messages', 'menu_cat_update', 'The menu category wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(154, 1, 'en', 'error_messages', 'menu_create', 'The menu entry wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(155, 1, 'en', 'error_messages', 'menu_position_create', 'The menu position wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(156, 1, 'en', 'error_messages', 'menu_position_delete', 'The menu position wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(157, 1, 'en', 'error_messages', 'menu_position_update', 'The menu position wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(158, 1, 'en', 'error_messages', 'menu_update', 'The menu entry wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(159, 1, 'en', 'error_messages', 'module_create', 'The module wasn''t created.', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(160, 1, 'en', 'error_messages', 'module_delete', 'The module wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(161, 1, 'en', 'error_messages', 'module_file_download', 'The download file couldn''t be found. Follow following steps to create and download the module file', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(162, 1, 'en', 'error_messages', 'module_install', 'The module wasn''t installed', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(163, 1, 'en', 'error_messages', 'module_update', 'The module wasn''t updated.', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(164, 1, 'en', 'error_messages', 'nothing_selected_delete', 'Nothing wasn''t selected to delete', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(165, 1, 'en', 'error_messages', 'post_cat_create', 'The post category wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(166, 1, 'en', 'error_messages', 'post_cat_delete', 'The post category wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(167, 1, 'en', 'error_messages', 'post_cat_update', 'The post category wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(168, 1, 'en', 'error_messages', 'pw_reset', 'Password reset failed', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(169, 1, 'en', 'error_messages', 'report_builder_create', 'The report builder wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(170, 1, 'en', 'error_messages', 'report_builder_delete', 'The report builder wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(171, 1, 'en', 'error_messages', 'report_builder_update', 'The report builder wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(172, 1, 'en', 'error_messages', 'report_builders_delete', 'The report builders weren''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(173, 1, 'en', 'error_messages', 'report_generator_delete', 'The report generator wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(174, 1, 'en', 'error_messages', 'report_generator_install', 'The report generator wasn''t installed', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(175, 1, 'en', 'error_messages', 'report_generators_delete', 'The report generators weren''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(176, 1, 'en', 'error_messages', 'slide_create', 'The slide wasn''t created', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(177, 1, 'en', 'error_messages', 'slide_delete', 'The slide wasn''t deleted', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(178, 1, 'en', 'error_messages', 'slide_update', 'The slide wasn''t updated', '2017-04-05 00:31:59', '2017-04-05 00:31:59'),
(179, 1, 'en', 'error_messages', 'subscriber_create', 'The subscriber wasn''t created', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(180, 1, 'en', 'error_messages', 'subscriber_delete', 'The subscriber wasn''t deleted', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(181, 1, 'en', 'error_messages', 'subscriber_update', 'The subscriber wasn''t updated', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(182, 1, 'en', 'error_messages', 'theme_file_select', 'No theme file was selected to upload', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(183, 1, 'en', 'error_messages', 'translate_lang_create', 'The translation language wasn''t created', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(184, 1, 'en', 'error_messages', 'translate_lang_delete', 'The translation language wasn''t deleted', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(185, 1, 'en', 'error_messages', 'translate_lang_install', 'The translation language wasn''t installed', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(186, 1, 'en', 'error_messages', 'translate_lang_update', 'The translation language wasn''t updated', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(187, 1, 'en', 'error_messages', 'user_create', 'The user :username wasn''t created.', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(188, 1, 'en', 'error_messages', 'user_email_exist', 'No user exists with the specified email address', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(189, 1, 'en', 'error_messages', 'user_exist', 'The specified user doesn''t exist', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(190, 1, 'en', 'error_messages', 'user_group_create', 'The user group :usergroup wasn''t created', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(191, 1, 'en', 'error_messages', 'user_group_update', 'The user group :usergroup wasn''t updated', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(192, 1, 'en', 'error_messages', 'user_or_security_answer', 'Either the username or security answer is incorrect', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(193, 1, 'en', 'error_messages', 'user_suspend', 'The user can''t be suspended', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(194, 1, 'en', 'error_messages', 'user_update', 'User information wasn''t updated.', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(195, 1, 'en', 'error_messages', 'users_find', 'The user wasn''t found.', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(196, 1, 'en', 'fields', 'address', 'Address', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(197, 1, 'en', 'fields', 'alias', 'Alias', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(198, 1, 'en', 'fields', 'author', 'Author', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(199, 1, 'en', 'fields', 'caption', 'Caption', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(200, 1, 'en', 'fields', 'city', 'City', '2017-04-05 00:32:00', '2017-04-05 00:32:00'),
(201, 1, 'en', 'fields', 'contact', 'Contact', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(202, 1, 'en', 'fields', 'contact_categories', 'Contact Categories', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(203, 1, 'en', 'fields', 'country', 'Country', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(204, 1, 'en', 'fields', 'data', 'Data', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(205, 1, 'en', 'fields', 'description', 'Description', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(206, 1, 'en', 'fields', 'details', 'Details', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(207, 1, 'en', 'fields', 'download', 'Download', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(208, 1, 'en', 'fields', 'email', 'Email', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(209, 1, 'en', 'fields', 'enabled', 'Enabled', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(210, 1, 'en', 'fields', 'fax', 'Fax', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(211, 1, 'en', 'fields', 'first_name', 'First Name', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(212, 1, 'en', 'fields', 'folder', 'Folder', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(213, 1, 'en', 'fields', 'form', 'Form', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(214, 1, 'en', 'fields', 'image', 'Image', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(215, 1, 'en', 'fields', 'includes', 'Includes', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(216, 1, 'en', 'fields', 'theme_file', 'Theme file(.zip)', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(217, 1, 'en', 'fields', 'install_new_module', 'Install New Module', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(218, 1, 'en', 'fields', 'installed_at', 'Installed At', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(219, 1, 'en', 'fields', 'last_name', 'Last Name', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(220, 1, 'en', 'fields', 'latitude', 'Latitude', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(221, 1, 'en', 'fields', 'links', 'Links', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(222, 1, 'en', 'fields', 'location', 'Location', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(223, 1, 'en', 'fields', 'longitude', 'Longitude', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(224, 1, 'en', 'fields', 'message', 'Message', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(225, 1, 'en', 'fields', 'mobile', 'Mobile', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(226, 1, 'en', 'fields', 'name', 'Name', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(227, 1, 'en', 'fields', 'password', 'Password', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(228, 1, 'en', 'fields', 'postal_code', 'Postal/ZIP code', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(229, 1, 'en', 'fields', 'screenshot', 'Screenshot', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(230, 1, 'en', 'fields', 'selected_forms', 'Selected Form(s)', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(231, 1, 'en', 'fields', 'sender', 'Sender', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(232, 1, 'en', 'fields', 'state', 'State', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(233, 1, 'en', 'fields', 'subject', 'Subject', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(234, 1, 'en', 'fields', 'table_in_db', 'Table in DB', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(235, 1, 'en', 'fields', 'table_names', 'Table Name(s)', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(236, 1, 'en', 'fields', 'target', 'Target', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(237, 1, 'en', 'fields', 'telephone', 'Telephone', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(238, 1, 'en', 'fields', 'theme', 'Theme', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(239, 1, 'en', 'fields', 'username', 'Username', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(240, 1, 'en', 'fields', 'version', 'Version', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(241, 1, 'en', 'fields', 'website', 'Website', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(242, 1, 'en', 'fields', 'language', 'Language', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(243, 1, 'en', 'fields', 'code', 'Code', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(244, 1, 'en', 'fields', 'group', 'Group', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(245, 1, 'en', 'fields', 'user', 'User', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(246, 1, 'en', 'form_messages', 'select_image', 'Select Image', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(247, 1, 'en', 'form_messages', 'select_location', 'Select Location', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(248, 1, 'en', 'form_messages', 'select_report_generator', 'Select the report generator', '2017-04-05 00:32:01', '2017-04-05 00:32:01'),
(249, 1, 'en', 'form_messages', 'display_options', 'Display Options', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(250, 1, 'en', 'form_messages', 'build_report', 'Build Report', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(251, 1, 'en', 'form_messages', 'show_calendars', 'Show calendars', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(252, 1, 'en', 'form_messages', 'report_fields_to_show', 'Fields to display in report', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(253, 1, 'en', 'form_messages', 'theme_file', 'Select the theme file(.zip)', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(254, 1, 'en', 'form_messages', 'blank_for_automatic_alias', 'Leave blank for automatic alias', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(255, 1, 'en', 'form_messages', 'redirect_to_after_saving', 'Redirect to after saving', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(256, 1, 'en', 'form_messages', 'show_captcha', 'Show Captcha', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(257, 1, 'en', 'form_messages', 'extra_code', 'Extra code', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(258, 1, 'en', 'form_messages', 'write_extra_code', 'Write php code within &lt;?php ?&gt; and javascript code within &lt;script&gt;&lt;/script&gt;', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(259, 1, 'en', 'form_messages', 'replace_existing', 'Replace Existing', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(260, 1, 'en', 'form_messages', 'associated_companies', 'Associated Companies', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(261, 1, 'en', 'form_messages', 'send_to', 'Send to', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(262, 1, 'en', 'form_messages', 'drag_drop_components', 'Drag &amp; Drop Components', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(263, 1, 'en', 'form_messages', 'current_folder', 'Current Folder', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(264, 1, 'en', 'form_messages', 'drop_to_upload', 'Drop files to upload or click to browse files', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(265, 1, 'en', 'form_messages', 'no_spaces_in_folder', 'Don''t use spaces and other invalid characters for folder name', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(266, 1, 'en', 'form_messages', 'translation_note', 'Note: Don''t translate the word starting with : and _ characters. E.g. :username, :usergroup, _TOTAL_, _START_ etc.', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(267, 1, 'en', 'form_messages', 'translation_lang_code_example', '(Example: en for English)', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(268, 1, 'en', 'form_messages', 'select_lang_file', 'Select the language file', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(269, 1, 'en', 'form_messages', 'overwrite_lang_file', 'Overwrite existing language files', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(270, 1, 'en', 'form_messages', 'restore_warning', 'Restoring from backup will replace every data with the data from the backup file', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(271, 1, 'en', 'options', 'create_new', 'Create New', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(272, 1, 'en', 'options', 'install_new', 'Install New', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(273, 1, 'en', 'options', 'upload_backup', 'Upload Backup File', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(274, 1, 'en', 'options', 'edit', 'Edit', '2017-04-05 00:32:02', '2017-04-05 00:32:02'),
(275, 1, 'en', 'options', 'delete', 'Delete', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(276, 1, 'en', 'options', 'save', 'Save', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(277, 1, 'en', 'options', 'activate', 'Activate', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(278, 1, 'en', 'options', 'deactivate', 'Deactivate', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(279, 1, 'en', 'options', 'install', 'Install', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(280, 1, 'en', 'options', 'created_at', 'Created At', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(281, 1, 'en', 'options', 'installed_at', 'Installed At', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(282, 1, 'en', 'options', 'updated_at', 'Updated At', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(283, 1, 'en', 'options', 'for_module', 'For Module', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(284, 1, 'en', 'options', 'actions', 'Actions', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(285, 1, 'en', 'options', 'status', 'Status', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(286, 1, 'en', 'options', 'confirm', 'Confirm', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(287, 1, 'en', 'options', 'show', 'Show', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(288, 1, 'en', 'options', 'hide', 'Hide', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(289, 1, 'en', 'options', 'processing', 'Processing...', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(290, 1, 'en', 'options', 'close', 'Close', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(291, 1, 'en', 'options', 'manage', 'Manage', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(292, 1, 'en', 'options', 'export', 'Export', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(293, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(294, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(295, 1, 'en', 'password_reset', 'reset', 'Reset Password', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(296, 1, 'en', 'password_reset', 'enter_email', 'Enter your e-mail address below to receive the reset code.', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(297, 1, 'en', 'password_reset', 'reset_form', 'Password Reset Form', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(298, 1, 'en', 'password_reset', 'username', 'Enter your username', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(299, 1, 'en', 'password_reset', 'security_question', 'Security question', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(300, 1, 'en', 'password_reset', 'security_answer', 'Enter your security answer', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(301, 1, 'en', 'password_reset', 'new_password', 'Enter your new password', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(302, 1, 'en', 'password_reset', 'reset_confirmation', 'Password Reset Confirmation', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(303, 1, 'en', 'password_reset', 'reset_success', 'You have successfully reset your password. If you did not do this, please click :link to suspend your user account.', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(304, 1, 'en', 'public', 'contacts_category', 'Contacts Category', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(305, 1, 'en', 'public', 'captcha', 'Enter Captcha', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(306, 1, 'en', 'public', 'send', 'Send Message', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(307, 1, 'en', 'public', '404_message', 'The page you were trying to access doesn''t<br/> exist or has been removed', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(308, 1, 'en', 'public', '500_message', 'Oops, Something went wrong.<br/> We are fixing it!', '2017-04-05 00:32:03', '2017-04-05 00:32:03'),
(309, 1, 'en', 'public', 'errors_list', 'The following errors have occurred', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(310, 1, 'en', 'public', 'contacts', 'Contacts', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(311, 1, 'en', 'public', 'send_message', 'Send us a message', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(312, 1, 'en', 'public', 'name', 'Name', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(313, 1, 'en', 'public', 'email', 'Email', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(314, 1, 'en', 'public', 'subject', 'Subject', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(315, 1, 'en', 'public', 'message', 'Message', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(316, 1, 'en', 'public', 'contacting_from', 'Contacting from', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(317, 1, 'en', 'reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(318, 1, 'en', 'reminders', 'user', 'We can''t find a user with that e-mail address.', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(319, 1, 'en', 'reminders', 'token', 'This password reset token is invalid.', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(320, 1, 'en', 'reminders', 'sent', 'Password reminder sent!', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(321, 1, 'en', 'success_messages', 'backup_delete', 'The backup file was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(322, 1, 'en', 'success_messages', 'companies_delete', 'The companies were deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(323, 1, 'en', 'success_messages', 'company_branch_create', 'The company branch was created', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(324, 1, 'en', 'success_messages', 'company_branch_delete', 'The company branch was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(325, 1, 'en', 'success_messages', 'company_branch_update', 'The company branch was updated', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(326, 1, 'en', 'success_messages', 'company_branches_delete', 'The company branches were deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(327, 1, 'en', 'success_messages', 'company_create', 'The company was created', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(328, 1, 'en', 'success_messages', 'company_delete', 'The company was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(329, 1, 'en', 'success_messages', 'company_update', 'The company was updated', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(330, 1, 'en', 'success_messages', 'config_change', 'The settings were updated', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(331, 1, 'en', 'success_messages', 'contact_cat_create', 'The contact category was created', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(332, 1, 'en', 'success_messages', 'contact_cat_delete', 'The contact category was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(333, 1, 'en', 'success_messages', 'contact_cat_update', 'The contact category was updated', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(334, 1, 'en', 'success_messages', 'contact_create', 'The contact was created', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(335, 1, 'en', 'success_messages', 'contact_delete', 'The contact was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(336, 1, 'en', 'success_messages', 'contact_update', 'The contact was updated', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(337, 1, 'en', 'success_messages', 'contacts_delete', 'The contacts were deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(338, 1, 'en', 'success_messages', 'entries_delete', 'The entries were deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(339, 1, 'en', 'success_messages', 'entry_create', 'The entry was created', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(340, 1, 'en', 'success_messages', 'entry_delete', 'The entry was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(341, 1, 'en', 'success_messages', 'entry_update', 'The entry was updated', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(342, 1, 'en', 'success_messages', 'form_cat_create', 'The form category was created', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(343, 1, 'en', 'success_messages', 'form_cat_delete', 'The form category was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(344, 1, 'en', 'success_messages', 'form_cat_update', 'The form category was updated', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(345, 1, 'en', 'success_messages', 'form_create', 'The form was created', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(346, 1, 'en', 'success_messages', 'form_delete', 'Form was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(347, 1, 'en', 'success_messages', 'form_entries_delete', 'The form entries were deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(348, 1, 'en', 'success_messages', 'form_entry_delete', 'The form entry was deleted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(349, 1, 'en', 'success_messages', 'form_submit', 'The form was submitted', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(350, 1, 'en', 'success_messages', 'form_update', 'Form was updated', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(351, 1, 'en', 'success_messages', 'language_change', 'The language was changed', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(352, 1, 'en', 'success_messages', 'mail_sent', 'The mail was sent', '2017-04-05 00:32:04', '2017-04-05 00:32:04'),
(353, 1, 'en', 'success_messages', 'media_entries_delete', 'The media entry were deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(354, 1, 'en', 'success_messages', 'media_entry_delete', 'The media entry was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(355, 1, 'en', 'success_messages', 'media_entry_update', 'The media entry was updated', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(356, 1, 'en', 'success_messages', 'menu_cat_create', 'The menu category was created', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(357, 1, 'en', 'success_messages', 'menu_cat_delete', 'The menu category was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(358, 1, 'en', 'success_messages', 'menu_cat_update', 'The menu category was updated', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(359, 1, 'en', 'success_messages', 'menu_create', 'The menu entry was created', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(360, 1, 'en', 'success_messages', 'menu_delete', 'The menu entry was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(361, 1, 'en', 'success_messages', 'menu_position_create', 'The menu position was created', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(362, 1, 'en', 'success_messages', 'menu_position_delete', 'The menu position was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(363, 1, 'en', 'success_messages', 'menu_position_update', 'The menu position was updated', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(364, 1, 'en', 'success_messages', 'menu_set_default', 'The menu entry was set as default', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(365, 1, 'en', 'success_messages', 'menu_update', 'The menu entry was updated', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(366, 1, 'en', 'success_messages', 'menus_delete', 'The menu entries were deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(367, 1, 'en', 'success_messages', 'module_create', 'The module was created', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(368, 1, 'en', 'success_messages', 'module_delete', 'Module was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(369, 1, 'en', 'success_messages', 'module_install', 'The module was installed', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(370, 1, 'en', 'success_messages', 'module_update', 'The module was updated', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(371, 1, 'en', 'success_messages', 'post_cat_create', 'The post category was created', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(372, 1, 'en', 'success_messages', 'post_cat_delete', 'The post category was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(373, 1, 'en', 'success_messages', 'post_cat_update', 'The post category was updated', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(374, 1, 'en', 'success_messages', 'post_cats_delete', 'The post categories were deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(375, 1, 'en', 'success_messages', 'pw_reset', 'Password reset is successful. Now you can log in with your new password', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(376, 1, 'en', 'success_messages', 'pw_reset_code_sent', 'Password reset code has been sent to the email address. Follow the instructions in the email to reset your password', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(377, 1, 'en', 'success_messages', 'report_builder_create', 'The report builder was created', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(378, 1, 'en', 'success_messages', 'report_builder_delete', 'The report builder was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(379, 1, 'en', 'success_messages', 'report_builder_update', 'The report builder was updated', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(380, 1, 'en', 'success_messages', 'report_builders_delete', 'The report builders were deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(381, 1, 'en', 'success_messages', 'report_generator_delete', 'The report generator was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(382, 1, 'en', 'success_messages', 'report_generator_install', 'The report generator was installed', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(383, 1, 'en', 'success_messages', 'report_generators_delete', 'The report generators were deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(384, 1, 'en', 'success_messages', 'slide_create', 'The slide was created', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(385, 1, 'en', 'success_messages', 'slide_delete', 'The slide was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(386, 1, 'en', 'success_messages', 'slide_update', 'The slide was updated', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(387, 1, 'en', 'success_messages', 'subscriber_create', 'The subscriber was created', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(388, 1, 'en', 'success_messages', 'subscriber_delete', 'The subscriber was deleted', '2017-04-05 00:32:05', '2017-04-05 00:32:05'),
(389, 1, 'en', 'success_messages', 'subscriber_update', 'The subscriber was updated', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(390, 1, 'en', 'success_messages', 'subscribers_delete', 'The subscribers were deleted', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(391, 1, 'en', 'success_messages', 'translate_lang_create', 'The translation language was created', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(392, 1, 'en', 'success_messages', 'translate_lang_delete', 'The translation language was deleted', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(393, 1, 'en', 'success_messages', 'translate_lang_install', 'The translation language was installed', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(394, 1, 'en', 'success_messages', 'translate_lang_update', 'The translation language was updated', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(395, 1, 'en', 'success_messages', 'user_activate', 'The user was activated.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(396, 1, 'en', 'success_messages', 'user_create', 'The user :username was created.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(397, 1, 'en', 'success_messages', 'user_deactivate', 'The user was deactivated.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(398, 1, 'en', 'success_messages', 'user_delete', 'The user was deleted.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(399, 1, 'en', 'success_messages', 'user_group_create', 'The user group :usergroup was created.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(400, 1, 'en', 'success_messages', 'user_group_delete', 'The user group was deleted.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(401, 1, 'en', 'success_messages', 'user_group_update', 'The user group :usergroup was updated.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(402, 1, 'en', 'success_messages', 'user_suspend', 'The user has been suspended', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(403, 1, 'en', 'success_messages', 'user_update', 'The user :username was updated.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(404, 1, 'en', 'success_messages', 'users_delete', 'The users were deleted.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(405, 1, 'en', 'users', 'enter_username_pw', 'Enter your username and password', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(406, 1, 'en', 'users', 'remember_me', 'Remember me', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(407, 1, 'en', 'users', 'forgot_pw', 'Forgot Password?', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(408, 1, 'en', 'users', 'login', 'Login', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(409, 1, 'en', 'users', 'logout', 'Log Out', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(410, 1, 'en', 'users', 'invalid_username_pw', 'Invalid username or password', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(411, 1, 'en', 'users', 'account_suspended', 'Your account has been suspended for :minutes minutes, please try again after :minutes minutes.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(412, 1, 'en', 'users', 'check_activation_email', 'Check your email for account activation details.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(413, 1, 'en', 'users', 'change_password', 'Change User Password', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(414, 1, 'en', 'users', 'reset_pw_email', 'Enter your e-mail address below to reset your password', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(415, 1, 'en', 'users', 'pw_change_6_months', 'It has been more than 6 months since you last changed your password. You need to change it before you can log in.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(416, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(417, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(418, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(419, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2017-04-05 00:32:06', '2017-04-05 00:32:06'),
(420, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(421, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(422, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2017-04-05 00:32:07', '2017-04-05 00:32:07');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(423, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(424, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(425, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(426, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(427, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(428, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(429, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(430, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(431, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(432, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(433, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(434, 1, 'en', 'validation', 'email', 'The :attribute format is invalid.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(435, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(436, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(437, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(438, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(439, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(440, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(441, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(442, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(443, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(444, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(445, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(446, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(447, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(448, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(449, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(450, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(451, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(452, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(453, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(454, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(455, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(456, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2017-04-05 00:32:07', '2017-04-05 00:32:07'),
(457, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2017-04-05 00:32:08', '2017-04-05 00:32:08'),
(458, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2017-04-05 00:32:08', '2017-04-05 00:32:08'),
(459, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2017-04-05 00:32:08', '2017-04-05 00:32:08'),
(460, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2017-04-05 00:32:08', '2017-04-05 00:32:08'),
(461, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2017-04-05 00:32:08', '2017-04-05 00:32:08'),
(462, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2017-04-05 00:32:08', '2017-04-05 00:32:08'),
(463, 1, 'en', 'validation', 'alpha_spaces', 'The :attribute may only contain letters and spaces.', '2017-04-05 00:32:08', '2017-04-05 00:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `mdl_doptor_companies`
--

CREATE TABLE `mdl_doptor_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reg_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `country_id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdl_doptor_company_branches`
--

CREATE TABLE `mdl_doptor_company_branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reg_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdl_doptor_countries`
--

CREATE TABLE `mdl_doptor_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `dialing_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mdl_doptor_countries`
--

INSERT INTO `mdl_doptor_countries` (`id`, `name`, `code`, `dialing_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '+93', '2017-04-05 06:31:53', NULL),
(2, 'Albania', 'AL', '+355', '2017-04-05 06:31:53', NULL),
(3, 'Algeria', 'DZ', '+213', '2017-04-05 06:31:53', NULL),
(4, 'American Samoa', 'AS', '+1', '2017-04-05 06:31:53', NULL),
(5, 'Andorra', 'AD', '+376', '2017-04-05 06:31:53', NULL),
(6, 'Angola', 'AO', '+244', '2017-04-05 06:31:53', NULL),
(7, 'Anguilla', 'AI', '+1', '2017-04-05 06:31:53', NULL),
(8, 'Antigua', 'AG', '+1', '2017-04-05 06:31:53', NULL),
(9, 'Argentina', 'AR', '+54', '2017-04-05 06:31:53', NULL),
(10, 'Armenia', 'AM', '+374', '2017-04-05 06:31:53', NULL),
(11, 'Aruba', 'AW', '+297', '2017-04-05 06:31:53', NULL),
(12, 'Australia', 'AU', '+61', '2017-04-05 06:31:53', NULL),
(13, 'Austria', 'AT', '+43', '2017-04-05 06:31:53', NULL),
(14, 'Azerbaijan', 'AZ', '+994', '2017-04-05 06:31:53', NULL),
(15, 'Bahrain', 'BH', '+973', '2017-04-05 06:31:53', NULL),
(16, 'Bangladesh', 'BD', '+880', '2017-04-05 06:31:53', NULL),
(17, 'Barbados', 'BB', '+1', '2017-04-05 06:31:53', NULL),
(18, 'Belarus', 'BY', '+375', '2017-04-05 06:31:53', NULL),
(19, 'Belgium', 'BE', '+32', '2017-04-05 06:31:53', NULL),
(20, 'Belize', 'BZ', '+501', '2017-04-05 06:31:53', NULL),
(21, 'Benin', 'BJ', '+229', '2017-04-05 06:31:53', NULL),
(22, 'Bermuda', 'BM', '+1', '2017-04-05 06:31:53', NULL),
(23, 'Bhutan', 'BT', '+975', '2017-04-05 06:31:53', NULL),
(24, 'Bolivia', 'BO', '+591', '2017-04-05 06:31:53', NULL),
(25, 'Bosnia and Herzegovina', 'BA', '+387', '2017-04-05 06:31:53', NULL),
(26, 'Botswana', 'BW', '+267', '2017-04-05 06:31:53', NULL),
(27, 'Brazil', 'BR', '+55', '2017-04-05 06:31:53', NULL),
(28, 'British Indian Ocean Territory', 'IO', '+246', '2017-04-05 06:31:53', NULL),
(29, 'British Virgin Islands', 'VG', '+1', '2017-04-05 06:31:53', NULL),
(30, 'Brunei', 'BN', '+673', '2017-04-05 06:31:53', NULL),
(31, 'Bulgaria', 'BG', '+359', '2017-04-05 06:31:53', NULL),
(32, 'Burkina Faso', 'BF', '+226', '2017-04-05 06:31:53', NULL),
(33, 'Burma Myanmar', 'MM', '+95', '2017-04-05 06:31:53', NULL),
(34, 'Burundi', 'BI', '+257', '2017-04-05 06:31:53', NULL),
(35, 'Cambodia', 'KH', '+855', '2017-04-05 06:31:53', NULL),
(36, 'Cameroon', 'CM', '+237', '2017-04-05 06:31:53', NULL),
(37, 'Canada', 'CA', '+1', '2017-04-05 06:31:53', NULL),
(38, 'Cape Verde', 'CV', '+238', '2017-04-05 06:31:53', NULL),
(39, 'Cayman Islands', 'KY', '+1', '2017-04-05 06:31:53', NULL),
(40, 'Central African Republic', 'CF', '+236', '2017-04-05 06:31:53', NULL),
(41, 'Chad', 'TD', '+235', '2017-04-05 06:31:53', NULL),
(42, 'Chile', 'CL', '+56', '2017-04-05 06:31:53', NULL),
(43, 'China', 'CN', '+86', '2017-04-05 06:31:53', NULL),
(44, 'Colombia', 'CO', '+57', '2017-04-05 06:31:53', NULL),
(45, 'Comoros', 'KM', '+269', '2017-04-05 06:31:53', NULL),
(46, 'Cook Islands', 'CK', '+682', '2017-04-05 06:31:53', NULL),
(47, 'Costa Rica', 'CR', '+506', '2017-04-05 06:31:53', NULL),
(48, 'Côte d''Ivoire', 'CI', '+225', '2017-04-05 06:31:53', NULL),
(49, 'Croatia', 'HR', '+385', '2017-04-05 06:31:53', NULL),
(50, 'Cuba', 'CU', '+53', '2017-04-05 06:31:53', NULL),
(51, 'Cyprus', 'CY', '+357', '2017-04-05 06:31:53', NULL),
(52, 'Czech Republic', 'CZ', '+420', '2017-04-05 06:31:53', NULL),
(53, 'Democratic Republic of Congo', 'CD', '+243', '2017-04-05 06:31:53', NULL),
(54, 'Denmark', 'DK', '+45', '2017-04-05 06:31:53', NULL),
(55, 'Djibouti', 'DJ', '+253', '2017-04-05 06:31:53', NULL),
(56, 'Dominica', 'DM', '+1', '2017-04-05 06:31:53', NULL),
(57, 'Dominican Republic', 'DO', '+1', '2017-04-05 06:31:53', NULL),
(58, 'Ecuador', 'EC', '+593', '2017-04-05 06:31:53', NULL),
(59, 'Egypt', 'EG', '+20', '2017-04-05 06:31:53', NULL),
(60, 'El Salvador', 'SV', '+503', '2017-04-05 06:31:53', NULL),
(61, 'Equatorial Guinea', 'GQ', '+240', '2017-04-05 06:31:53', NULL),
(62, 'Eritrea', 'ER', '+291', '2017-04-05 06:31:53', NULL),
(63, 'Estonia', 'EE', '+372', '2017-04-05 06:31:53', NULL),
(64, 'Ethiopia', 'ET', '+251', '2017-04-05 06:31:53', NULL),
(65, 'Falkland Islands', 'FK', '+500', '2017-04-05 06:31:53', NULL),
(66, 'Faroe Islands', 'FO', '+298', '2017-04-05 06:31:53', NULL),
(67, 'Federated States of Micronesia', 'FM', '+691', '2017-04-05 06:31:53', NULL),
(68, 'Fiji', 'FJ', '+679', '2017-04-05 06:31:53', NULL),
(69, 'Finland', 'FI', '+358', '2017-04-05 06:31:53', NULL),
(70, 'France', 'FR', '+33', '2017-04-05 06:31:53', NULL),
(71, 'French Guiana', 'GF', '+594', '2017-04-05 06:31:53', NULL),
(72, 'French Polynesia', 'PF', '+689', '2017-04-05 06:31:53', NULL),
(73, 'Gabon', 'GA', '+241', '2017-04-05 06:31:53', NULL),
(74, 'Georgia', 'GE', '+995', '2017-04-05 06:31:53', NULL),
(75, 'Germany', 'DE', '+49', '2017-04-05 06:31:53', NULL),
(76, 'Ghana', 'GH', '+233', '2017-04-05 06:31:53', NULL),
(77, 'Gibraltar', 'GI', '+350', '2017-04-05 06:31:53', NULL),
(78, 'Greece', 'GR', '+30', '2017-04-05 06:31:53', NULL),
(79, 'Greenland', 'GL', '+299', '2017-04-05 06:31:53', NULL),
(80, 'Grenada', 'GD', '+1', '2017-04-05 06:31:53', NULL),
(81, 'Guadeloupe', 'GP', '+590', '2017-04-05 06:31:53', NULL),
(82, 'Guam', 'GU', '+1', '2017-04-05 06:31:53', NULL),
(83, 'Guatemala', 'GT', '+502', '2017-04-05 06:31:53', NULL),
(84, 'Guinea', 'GN', '+224', '2017-04-05 06:31:53', NULL),
(85, 'Guinea-Bissau', 'GW', '+245', '2017-04-05 06:31:53', NULL),
(86, 'Guyana', 'GY', '+592', '2017-04-05 06:31:53', NULL),
(87, 'Haiti', 'HT', '+509', '2017-04-05 06:31:53', NULL),
(88, 'Honduras', 'HN', '+504', '2017-04-05 06:31:53', NULL),
(89, 'Hong Kong', 'HK', '+852', '2017-04-05 06:31:53', NULL),
(90, 'Hungary', 'HU', '+36', '2017-04-05 06:31:53', NULL),
(91, 'Iceland', 'IS', '+354', '2017-04-05 06:31:53', NULL),
(92, 'India', 'IN', '+91', '2017-04-05 06:31:53', NULL),
(93, 'Indonesia', 'ID', '+62', '2017-04-05 06:31:53', NULL),
(94, 'Iran', 'IR', '+98', '2017-04-05 06:31:53', NULL),
(95, 'Iraq', 'IQ', '+964', '2017-04-05 06:31:53', NULL),
(96, 'Ireland', 'IE', '+353', '2017-04-05 06:31:53', NULL),
(97, 'Israel', 'IL', '+972', '2017-04-05 06:31:53', NULL),
(98, 'Italy', 'IT', '+39', '2017-04-05 06:31:53', NULL),
(99, 'Jamaica', 'JM', '+1', '2017-04-05 06:31:53', NULL),
(100, 'Japan', 'JP', '+81', '2017-04-05 06:31:53', NULL),
(101, 'Jordan', 'JO', '+962', '2017-04-05 06:31:53', NULL),
(102, 'Kazakhstan', 'KZ', '+7', '2017-04-05 06:31:53', NULL),
(103, 'Kenya', 'KE', '+254', '2017-04-05 06:31:53', NULL),
(104, 'Kiribati', 'KI', '+686', '2017-04-05 06:31:53', NULL),
(105, 'Kosovo', 'XK', '+381', '2017-04-05 06:31:53', NULL),
(106, 'Kuwait', 'KW', '+965', '2017-04-05 06:31:53', NULL),
(107, 'Kyrgyzstan', 'KG', '+996', '2017-04-05 06:31:53', NULL),
(108, 'Laos', 'LA', '+856', '2017-04-05 06:31:53', NULL),
(109, 'Latvia', 'LV', '+371', '2017-04-05 06:31:53', NULL),
(110, 'Lebanon', 'LB', '+961', '2017-04-05 06:31:53', NULL),
(111, 'Lesotho', 'LS', '+266', '2017-04-05 06:31:53', NULL),
(112, 'Liberia', 'LR', '+231', '2017-04-05 06:31:53', NULL),
(113, 'Libya', 'LY', '+218', '2017-04-05 06:31:53', NULL),
(114, 'Liechtenstein', 'LI', '+423', '2017-04-05 06:31:53', NULL),
(115, 'Lithuania', 'LT', '+370', '2017-04-05 06:31:53', NULL),
(116, 'Luxembourg', 'LU', '+352', '2017-04-05 06:31:53', NULL),
(117, 'Macau', 'MO', '+853', '2017-04-05 06:31:53', NULL),
(118, 'Macedonia', 'MK', '+389', '2017-04-05 06:31:53', NULL),
(119, 'Madagascar', 'MG', '+261', '2017-04-05 06:31:53', NULL),
(120, 'Malawi', 'MW', '+265', '2017-04-05 06:31:53', NULL),
(121, 'Malaysia', 'MY', '+60', '2017-04-05 06:31:53', NULL),
(122, 'Maldives', 'MV', '+960', '2017-04-05 06:31:53', NULL),
(123, 'Mali', 'ML', '+223', '2017-04-05 06:31:53', NULL),
(124, 'Malta', 'MT', '+356', '2017-04-05 06:31:53', NULL),
(125, 'Marshall Islands', 'MH', '+692', '2017-04-05 06:31:53', NULL),
(126, 'Martinique', 'MQ', '+596', '2017-04-05 06:31:53', NULL),
(127, 'Mauritania', 'MR', '+222', '2017-04-05 06:31:53', NULL),
(128, 'Mauritius', 'MU', '+230', '2017-04-05 06:31:53', NULL),
(129, 'Mayotte', 'YT', '+262', '2017-04-05 06:31:53', NULL),
(130, 'Mexico', 'MX', '+52', '2017-04-05 06:31:53', NULL),
(131, 'Moldova', 'MD', '+373', '2017-04-05 06:31:53', NULL),
(132, 'Monaco', 'MC', '+377', '2017-04-05 06:31:53', NULL),
(133, 'Mongolia', 'MN', '+976', '2017-04-05 06:31:53', NULL),
(134, 'Montenegro', 'ME', '+382', '2017-04-05 06:31:53', NULL),
(135, 'Montserrat', 'MS', '+1', '2017-04-05 06:31:53', NULL),
(136, 'Morocco', 'MA', '+212', '2017-04-05 06:31:53', NULL),
(137, 'Mozambique', 'MZ', '+258', '2017-04-05 06:31:53', NULL),
(138, 'Namibia', 'NA', '+264', '2017-04-05 06:31:53', NULL),
(139, 'Nauru', 'NR', '+674', '2017-04-05 06:31:53', NULL),
(140, 'Nepal', 'NP', '+977', '2017-04-05 06:31:53', NULL),
(141, 'Netherlands', 'NL', '+31', '2017-04-05 06:31:53', NULL),
(142, 'Netherlands Antilles', 'AN', '+599', '2017-04-05 06:31:53', NULL),
(143, 'New Caledonia', 'NC', '+687', '2017-04-05 06:31:53', NULL),
(144, 'New Zealand', 'NZ', '+64', '2017-04-05 06:31:53', NULL),
(145, 'Nicaragua', 'NI', '+505', '2017-04-05 06:31:53', NULL),
(146, 'Niger', 'NE', '+227', '2017-04-05 06:31:53', NULL),
(147, 'Nigeria', 'NG', '+234', '2017-04-05 06:31:53', NULL),
(148, 'Niue', 'NU', '+683', '2017-04-05 06:31:53', NULL),
(149, 'Norfolk Island', 'NF', '+672', '2017-04-05 06:31:53', NULL),
(150, 'North Korea', 'KP', '+850', '2017-04-05 06:31:53', NULL),
(151, 'Northern Mariana Islands', 'MP', '+1', '2017-04-05 06:31:53', NULL),
(152, 'Norway', 'NO', '+47', '2017-04-05 06:31:53', NULL),
(153, 'Oman', 'OM', '+968', '2017-04-05 06:31:53', NULL),
(154, 'Pakistan', 'PK', '+92', '2017-04-05 06:31:53', NULL),
(155, 'Palau', 'PW', '+680', '2017-04-05 06:31:53', NULL),
(156, 'Palestine', 'PS', '+970', '2017-04-05 06:31:53', NULL),
(157, 'Panama', 'PA', '+507', '2017-04-05 06:31:53', NULL),
(158, 'Papua New Guinea', 'PG', '+675', '2017-04-05 06:31:53', NULL),
(159, 'Paraguay', 'PY', '+595', '2017-04-05 06:31:53', NULL),
(160, 'Peru', 'PE', '+51', '2017-04-05 06:31:53', NULL),
(161, 'Philippines', 'PH', '+63', '2017-04-05 06:31:53', NULL),
(162, 'Poland', 'PL', '+48', '2017-04-05 06:31:53', NULL),
(163, 'Portugal', 'PT', '+351', '2017-04-05 06:31:53', NULL),
(164, 'Puerto Rico', 'PR', '+1', '2017-04-05 06:31:53', NULL),
(165, 'Qatar', 'QA', '+974', '2017-04-05 06:31:53', NULL),
(166, 'Republic of the Congo', 'CG', '+242', '2017-04-05 06:31:53', NULL),
(167, 'Réunion', 'RE', '+262', '2017-04-05 06:31:53', NULL),
(168, 'Romania', 'RO', '+40', '2017-04-05 06:31:53', NULL),
(169, 'Russia', 'RU', '+7', '2017-04-05 06:31:53', NULL),
(170, 'Rwanda', 'RW', '+250', '2017-04-05 06:31:53', NULL),
(171, 'Saint Barthélemy', 'BL', '+590', '2017-04-05 06:31:53', NULL),
(172, 'Saint Helena', 'SH', '+290', '2017-04-05 06:31:53', NULL),
(173, 'Saint Kitts and Nevis', 'KN', '+1', '2017-04-05 06:31:53', NULL),
(174, 'Saint Martin', 'MF', '+590', '2017-04-05 06:31:53', NULL),
(175, 'Saint Pierre and Miquelon', 'PM', '+508', '2017-04-05 06:31:53', NULL),
(176, 'Saint Vincent and the Grenadines', 'VC', '+1', '2017-04-05 06:31:53', NULL),
(177, 'Samoa', 'WS', '+685', '2017-04-05 06:31:53', NULL),
(178, 'San Marino', 'SM', '+378', '2017-04-05 06:31:53', NULL),
(179, 'São Tomé and Príncipe', 'ST', '+239', '2017-04-05 06:31:53', NULL),
(180, 'Saudi Arabia', 'SA', '+966', '2017-04-05 06:31:53', NULL),
(181, 'Senegal', 'SN', '+221', '2017-04-05 06:31:53', NULL),
(182, 'Serbia', 'RS', '+381', '2017-04-05 06:31:53', NULL),
(183, 'Seychelles', 'SC', '+248', '2017-04-05 06:31:53', NULL),
(184, 'Sierra Leone', 'SL', '+232', '2017-04-05 06:31:53', NULL),
(185, 'Singapore', 'SG', '+65', '2017-04-05 06:31:53', NULL),
(186, 'Slovakia', 'SK', '+421', '2017-04-05 06:31:53', NULL),
(187, 'Slovenia', 'SI', '+386', '2017-04-05 06:31:53', NULL),
(188, 'Solomon Islands', 'SB', '+677', '2017-04-05 06:31:53', NULL),
(189, 'Somalia', 'SO', '+252', '2017-04-05 06:31:53', NULL),
(190, 'South Africa', 'ZA', '+27', '2017-04-05 06:31:53', NULL),
(191, 'South Korea', 'KR', '+82', '2017-04-05 06:31:53', NULL),
(192, 'Spain', 'ES', '+34', '2017-04-05 06:31:53', NULL),
(193, 'Sri Lanka', 'LK', '+94', '2017-04-05 06:31:53', NULL),
(194, 'St. Lucia', 'LC', '+1', '2017-04-05 06:31:53', NULL),
(195, 'Sudan', 'SD', '+249', '2017-04-05 06:31:53', NULL),
(196, 'Suriname', 'SR', '+597', '2017-04-05 06:31:53', NULL),
(197, 'Swaziland', 'SZ', '+268', '2017-04-05 06:31:53', NULL),
(198, 'Sweden', 'SE', '+46', '2017-04-05 06:31:53', NULL),
(199, 'Switzerland', 'CH', '+41', '2017-04-05 06:31:53', NULL),
(200, 'Syria', 'SY', '+963', '2017-04-05 06:31:53', NULL),
(201, 'Taiwan', 'TW', '+886', '2017-04-05 06:31:53', NULL),
(202, 'Tajikistan', 'TJ', '+992', '2017-04-05 06:31:53', NULL),
(203, 'Tanzania', 'TZ', '+255', '2017-04-05 06:31:53', NULL),
(204, 'Thailand', 'TH', '+66', '2017-04-05 06:31:53', NULL),
(205, 'The Bahamas', 'BS', '+1', '2017-04-05 06:31:53', NULL),
(206, 'The Gambia', 'GM', '+220', '2017-04-05 06:31:53', NULL),
(207, 'Timor-Leste', 'TL', '+670', '2017-04-05 06:31:53', NULL),
(208, 'Togo', 'TG', '+228', '2017-04-05 06:31:53', NULL),
(209, 'Tokelau', 'TK', '+690', '2017-04-05 06:31:53', NULL),
(210, 'Tonga', 'TO', '+676', '2017-04-05 06:31:53', NULL),
(211, 'Trinidad and Tobago', 'TT', '+1', '2017-04-05 06:31:53', NULL),
(212, 'Tunisia', 'TN', '+216', '2017-04-05 06:31:53', NULL),
(213, 'Turkey', 'TR', '+90', '2017-04-05 06:31:53', NULL),
(214, 'Turkmenistan', 'TM', '+993', '2017-04-05 06:31:53', NULL),
(215, 'Turks and Caicos Islands', 'TC', '+1', '2017-04-05 06:31:53', NULL),
(216, 'Tuvalu', 'TV', '+688', '2017-04-05 06:31:53', NULL),
(217, 'Uganda', 'UG', '+256', '2017-04-05 06:31:53', NULL),
(218, 'Ukraine', 'UA', '+380', '2017-04-05 06:31:53', NULL),
(219, 'United Arab Emirates', 'AE', '+971', '2017-04-05 06:31:53', NULL),
(220, 'United Kingdom', 'GB', '+44', '2017-04-05 06:31:53', NULL),
(221, 'United States', 'US', '+1', '2017-04-05 06:31:53', NULL),
(222, 'Uruguay', 'UY', '+598', '2017-04-05 06:31:53', NULL),
(223, 'US Virgin Islands', 'VI', '+1', '2017-04-05 06:31:53', NULL),
(224, 'Uzbekistan', 'UZ', '+998', '2017-04-05 06:31:53', NULL),
(225, 'Vanuatu', 'VU', '+678', '2017-04-05 06:31:53', NULL),
(226, 'Vatican City', 'VA', '+39', '2017-04-05 06:31:53', NULL),
(227, 'Venezuela', 'VE', '+58', '2017-04-05 06:31:53', NULL),
(228, 'Vietnam', 'VN', '+84', '2017-04-05 06:31:53', NULL),
(229, 'Wallis and Futuna', 'WF', '+681', '2017-04-05 06:31:53', NULL),
(230, 'Yemen', 'YE', '+967', '2017-04-05 06:31:53', NULL),
(231, 'Zambia', 'ZM', '+260', '2017-04-05 06:31:53', NULL),
(232, 'Zimbabwe', 'ZW', '+263', '2017-04-05 06:31:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mdl_doptor_incharges`
--

CREATE TABLE `mdl_doptor_incharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inchargable_id` int(10) UNSIGNED NOT NULL,
  `inchargable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_entries`
--

CREATE TABLE `media_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_entries`
--

INSERT INTO `media_entries` (`id`, `caption`, `image`, `thumbnail`, `album_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '', 'time line11_ihA2koJj.jpg', 'time line11_ihA2koJj.jpg', 0, 1, 0, '2014-03-20 19:59:09', '2014-03-20 19:59:09'),
(3, '', 'Doptor Logo_UdhdA20E.png', 'Doptor Logo_UdhdA20E.png', 0, 3, 0, '2014-03-22 21:32:53', '2014-03-22 21:32:53'),
(8, NULL, 'doptor/Doptor Logo Black_M6Cxwm5B.png', 'doptor/thumbs/Doptor Logo Black_M6Cxwm5B.png', NULL, 14, NULL, '2014-03-31 04:07:29', '2014-03-31 04:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_manual` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `display_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `same_window` tinyint(1) NOT NULL DEFAULT '1',
  `show_image` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_wrapper` tinyint(1) NOT NULL DEFAULT '0',
  `wrapper_width` int(10) UNSIGNED DEFAULT NULL,
  `wrapper_height` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'published',
  `parent` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `alias`, `link`, `icon`, `link_manual`, `category`, `position`, `display_text`, `same_window`, `show_image`, `is_default`, `is_wrapper`, `wrapper_width`, `wrapper_height`, `status`, `parent`, `order`, `target`, `language_id`, `publish_start`, `publish_end`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(4, 'Home', 'public-top-menu-home', '/', '', '', 0, 1, 'Welcome to Doptor CMS.', 1, 1, 0, 0, NULL, NULL, 'published', 0, 1, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(5, 'About Us', 'public-top-menu-about-us', 'pages/about-us', '', '#', 0, 1, '', 1, 0, 0, 0, NULL, NULL, 'published', 0, 3, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(6, 'Backend', 'public-small-menu-right-backend', 'manual', '', 'backend', 0, 4, '', 0, 1, 0, 0, NULL, NULL, 'published', 0, 1, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(7, 'Admin', 'public-small-menu-right-admin', 'manual', '', 'admin', 0, 4, '', 0, 1, 0, 0, NULL, NULL, 'published', 0, 2, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(8, 'About Us', 'public-bottom-menu-about-us', 'pages/about-us', '', '', 0, 2, '', 1, 1, 0, 0, NULL, NULL, 'published', 0, 0, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(9, 'Demo', 'public-small-menu-left-demo', 'pages/demo', '', '#', 0, 3, '', 0, 0, 0, 0, NULL, NULL, 'published', 0, 1, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(10, 'Download', 'public-small-menu-left-download', 'pages/under-construction', '', '', 0, 3, '', 0, 0, 0, 0, NULL, NULL, 'published', 0, 2, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(13, 'Contact Us', 'public-top-menu-contact-us', 'link_type/modules/form23', '', '', 0, 1, '', 1, 1, 0, 0, NULL, NULL, 'unpublished', 0, 8, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(14, 'Main', 'public-top-menu-main', 'manual', '', '#', 0, 1, '', 1, 1, 0, 0, NULL, NULL, 'published', 0, 2, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(15, 'Sub-1', 'public-top-menu-sub-1', 'manual', '', '#', 0, 1, '', 1, 1, 0, 0, NULL, NULL, 'published', 14, 0, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(16, 'Sub-2', 'public-top-menu-sub-2', 'manual', '', '#', 0, 1, '', 1, 1, 0, 0, NULL, NULL, 'published', 14, 0, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(17, 'Sub-3', 'public-top-menu-sub-3', 'manual', '', '#', 0, 1, '', 1, 1, 0, 0, NULL, NULL, 'published', 14, 0, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(18, 'Sub-Sub-1', 'public-top-menu-sub-sub-1', 'manual', '', '#', 0, 1, '', 1, 1, 0, 0, NULL, NULL, 'published', 15, 0, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(19, 'Sub-Sub-2', 'public-top-menu-sub-sub-2', 'manual', '', '#', 0, 1, '', 1, 1, 0, 0, NULL, NULL, 'published', 15, 0, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(20, 'Sub-Sub-Sub-1', 'public-top-menu-sub-sub-sub-1', 'manual', '', '#', 0, 1, '', 1, 1, 0, 0, NULL, NULL, 'published', 18, 0, 'public', 0, NULL, NULL, '', '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50'),
(32, 'Help', 'public-top-menu-help', 'pages/help', NULL, '', 0, 1, '', 1, 0, 0, 0, NULL, NULL, 'published', 0, 10, 'public', 0, NULL, NULL, NULL, '', '', '2017-04-05 00:31:50', '2017-04-05 00:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `menu_categories`
--

CREATE TABLE `menu_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `name`, `alias`, `position`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Onepage Top', 'onepage-top', 1, '', '2014-10-01 17:08:19', '2014-10-01 17:08:19'),
(2, 'Onepage Bottom', 'onepage-bottom', 2, '', '2014-10-01 17:08:28', '2014-10-01 17:08:28'),
(3, 'Multiplepage Top', 'multiplepage-top', 1, '', '2014-10-01 17:08:40', '2014-10-01 17:08:40'),
(4, 'Multiplepage Bottom', 'multiplepage-bottom', 2, '', '2014-10-01 17:08:50', '2014-10-01 17:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `menu_positions`
--

CREATE TABLE `menu_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_positions`
--

INSERT INTO `menu_positions` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Public Top Menu', 'public-top-menu', '2017-04-04 18:00:00', '2017-04-04 18:00:00'),
(2, 'Public Bottom Menu', 'public-bottom-menu', '2017-04-04 18:00:00', '2017-04-04 18:00:00'),
(3, 'Public Small Menu Left', 'public-small-menu-left', '2017-04-04 18:00:00', '2017-04-04 18:00:00'),
(4, 'Public Small Menu Right', 'public-small-menu-right', '2017-04-04 18:00:00', '2017-04-04 18:00:00'),
(5, 'Admin Top Menu', 'admin-top-menu', '2017-04-04 18:00:00', '2017-04-04 18:00:00'),
(6, 'Admin Menu Menu', 'admin-main-menu', '2017-04-04 18:00:00', '2017-04-04 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2012_12_06_225921_migration_cartalyst_sentry_install_users', 1),
('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 1),
('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 1),
('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
('2013_12_05_152937_create_form_categories_table', 1),
('2013_12_14_150939_create_built_forms_table', 1),
('2013_12_16_085835_create_menucategories_table', 1),
('2013_12_16_142732_create_menus_table', 1),
('2013_12_26_144014_create_modules_table', 1),
('2014_02_02_104111_pivot_group_menu_table', 1),
('2014_02_04_061701_create_built_modules_table', 1),
('2014_02_14_030526_create_settings_table', 1),
('2014_04_02_193005_create_translations_table', 1),
('2014_08_21_221904_create_form_entries_table', 1),
('2014_09_07_223749_create_menu_positions_table', 1),
('2014_09_08_214527_add_position_to_menus_table', 1),
('2014_09_13_200037_add_security_fields_to_users_table', 1),
('2015_06_16_172514_add_migrations_to_modules_table', 1),
('2015_07_09_215801_add_vendor_to_modules_table', 1),
('2015_07_09_221728_add_vendor_to_built_modules_table', 1),
('2015_08_03_202211_add_company_id_to_users_table', 1),
('2015_08_11_160303_add_models_to_built_modules_table', 1),
('2015_08_11_160503_add_models_to_modules_table', 1),
('2015_08_11_160803_add_form_fields_to_built_modules_table', 1),
('2015_08_12_171503_add_form_fields_to_modules_table', 1),
('2015_08_12_211033_add_is_visible_to_built_modules_table', 1),
('2015_08_13_213830_add_requires_to_built_modules_table', 1),
('2015_08_17_083322_add_is_default_to_menus_table', 1),
('2016_11_12_140115_create_backups_table', 1),
('2014_01_26_175006_create_posts_table', 2),
('2014_01_28_153951_create_categories_table', 2),
('2014_01_29_063050_pivot_category_post_table', 2),
('2014_02_19_175006_create_slideshow_table', 3),
('2016_09_26_143455_add_links_to_slideshow_table', 3),
('2014_03_10_020526_create_media_entries_table', 4),
('2014_03_12_074541_create_themes_table', 5),
('2016_10_02_151333_create_theme_settings_table', 5),
('2016_10_02_151859_add_has_settings_to_theme_table', 5),
('2014_10_14_294335_create_contact_details_table', 6),
('2014_10_14_437293_create_contact_emails_table', 6),
('2014_10_21_153951_create_contact_categories_table', 6),
('2014_07_28_142827_create_built_reports_table', 7),
('2014_07_28_142845_create_report_generators_table', 8),
('2015_07_20_190240_create_mdl_doptor_incharges_table', 9),
('2015_07_20_201633_create_mdl_doptor_countries_table', 9),
('2015_07_20_203952_create_mdl_doptor_companies_table', 9),
('2015_07_21_205437_create_mdl_doptor_company_branches_table', 9),
('2015_12_01_144018_create_translation_languages_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vendor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `links` text COLLATE utf8_unicode_ci,
  `models` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_fields` text COLLATE utf8_unicode_ci,
  `migrations` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `alias`, `hash`, `table`, `version`, `author`, `vendor`, `website`, `description`, `target`, `links`, `models`, `form_fields`, `migrations`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'Translation Manager', 'translation_manager', 'module_07375626f6468', '', '1.0', 'Doptor', 'Doptor', 'http://doptor.net', NULL, 'backend', '[{"alias": "translation_manager", "name": "Translation Manager"}]', 'NULL', NULL, '["2015_12_01_144018_create_translation_languages_table"]', 1, '2017-04-05 00:31:53', '2017-04-05 00:31:53'),
(2, 'Company Info', 'CompanyInfo', 'module_55ad0a9988993', '', '1.0', 'Doptor', 'Doptor', 'http://doptor.net', NULL, 'public|admin|backend', '', '{"Company": "Companies", "CompanyBranch": "Company Branches"}', '[{"name": "Name", "reg_no": "Registration Number", "logo": "Logo", "address": "Address", "website": "Website", "phone": "Phone", "email": "Email", "address": "Address"}, {"name": "Name", "reg_no": "Registration Number", "address": "Address", "website": "Website", "phone": "Phone", "fax": "Fax", "mobile": "Mobile", "email": "Email"} ]', '["2015_07_20_190240_create_mdl_doptor_incharges_table","2015_07_20_201633_create_mdl_doptor_countries_table","2015_07_20_203952_create_mdl_doptor_companies_table","2015_07_21_205437_create_mdl_doptor_company_branches_table"]', 1, '2017-04-05 00:32:08', '2017-04-05 00:32:08'),
(3, 'Slideshow', 'Slideshow', 'module_32bc0a7573373', '', '1.0', 'Doptor', 'Doptor', 'http://doptor.net', NULL, 'backend', '[{"alias": "slideshow", "name": "Slideshow"}]', 'NULL', NULL, '["2014_02_19_175006_create_slideshow_table"]', 1, '2017-04-05 00:32:08', '2017-04-05 00:32:08'),
(8, 'eAccounting Pro', 'eAccountingPro', 'module_55ad0a201704051236', '', '1.0', 'Doptor Team', 'DoptorLtd', 'http://doptor.com', NULL, 'admin', '', '', '', '[]', 1, '2017-04-05 08:23:14', '2017-04-05 08:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('published','unpublished','drafted','archived') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'published',
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('page','post') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `hits` int(11) NOT NULL DEFAULT '0',
  `extras` text COLLATE utf8_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `permalink`, `image`, `content`, `status`, `target`, `featured`, `publish_start`, `publish_end`, `meta_title`, `meta_description`, `meta_keywords`, `type`, `hits`, `extras`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', 'contact', NULL, 'Our contact address goes here', 'published', 'public', 0, NULL, NULL, NULL, NULL, NULL, 'page', 0, '{"contact_page":true,"contact_coords":"40.7142700, -74.0059700"}', 1, NULL, '2014-03-29 15:45:00', '2014-03-29 15:45:00'),
(9, 'Welcome', 'welcome', NULL, '<p>The CMS public section can now be viewed at <a href="#">Public</a></p>\n\n<p>The CMS admin can now be viewed at <a href="admin">Admin</a></p>\n\n<p>The CMS backend can now be viewed at <a href="backend">Backend</a></p>', 'published', 'public', 0, NULL, NULL, NULL, NULL, NULL, 'page', 0, NULL, 1, NULL, '2014-03-29 15:45:00', '2014-03-29 15:45:00'),
(10, 'About Us', 'about-us', NULL, '<p>Doptor is an Integrated and well-designed Content Management System (CMS) provides an end user with the tools to build and maintain a sustainable web presence. For a serious company, having a maintainable website is extremely important and the effectiveness of such a site depends on the ease of use and power of the backend CMS. There are many available CMS out there but they are too generalized to fit the needs of many companies.</p>\n\n<p>Introducing the new CMS platform for businesses, which caters to their exact need without sacrificing the power and quality of a standard platform. Through this CMS, websites can be built that aims to serve as a learning and knowledge-sharing platform for the company and act as communication tool to disseminate information to the internal and external stakeholders. The website will be a tool for sharing public information and build rapport with the external stakeholders. It will be the main channel for the company to publish and share information on activities, lessons learnt from the project interventions, good practices and relevant research. In addition to having a CMS, a business needs other tools for regular operations as well. These other suites of applications run in the different departments of the company but together they ensure the moving forward of the company. In order to assist a company with all these needs, the CMS platform will include additional business modules, for example Invoicing, Bills, Accounting, Payroll, etc.</p>\n\n<p>This CMS compliable with IOS and android, other mobile devices and with all browser.</p>\n\n<p>- Doptor are provide a free opensource CMS.&nbsp;<br />\n- Build your website and any kind of application using doptor.<br />\n- Both online and offline.</p>\n\n<p>3 type of interface- 1). Backend, 2). Admin, 3). Public</p>\n\n<p>- Backend : You can manage full system.<br />\n- Admin : Your officer / clark can do the operation such as accounting, payroll, inventory etc.<br />\n- Public : &nbsp;Public website.</p>\n', 'published', 'public', 0, NULL, NULL, NULL, '', '', 'page', 1, NULL, 1, NULL, '2014-03-29 15:45:00', '2014-03-31 04:15:26'),
(11, 'First Post', 'first-post', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi odio mauris, auctor ut varius non, tempus nec nisi. Quisque at tellus risus. Aliquam erat volutpat. Proin et dolor magna. Sed vel metus justo. Mauris eu metus massa. Duis viverra ultricies nisl, ut pharetra eros hendrerit non.</p>\n<p>Phasellus laoreet libero non eros rhoncus sed iaculis ante molestie. Etiam arcu purus, dictum a tincidunt id, ornare sed orci. Curabitur ornare ornare nulla quis tincidunt. Morbi nisi elit, mattis nec bibendum vel, facilisis eu ipsum. Phasellus non dolor erat, in placerat lacus. Aliquam pulvinar, est eu commodo vulputate, neque elit molestie lorem, sed vestibulum felis erat et risus. Nulla non velit odio.</p>\n<p>Curabitur ornare ornare nulla quis tincidunt. Morbi nisi elit, mattis nec bibendum vel, facilisis eu ipsum. Phasellus non dolor erat, in placerat lacus. Aliquam pulvinar, est eu commodo vulputate, neque elit molestie lorem, sed vestibulum felis erat et risus. Nulla non velit odio.</p>', 'published', 'public', 0, NULL, NULL, NULL, NULL, NULL, 'post', 0, NULL, 1, NULL, '2014-03-29 15:45:00', '2014-03-29 15:45:00'),
(12, 'Second Post', 'second-post', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi odio mauris, auctor ut varius non, tempus nec nisi. Quisque at tellus risus. Aliquam erat volutpat. Proin et dolor magna. Sed vel metus justo. Mauris eu metus massa. Duis viverra ultricies nisl, ut pharetra eros hendrerit non.</p>\n<p>Phasellus laoreet libero non eros rhoncus sed iaculis ante molestie. Etiam arcu purus, dictum a tincidunt id, ornare sed orci. Curabitur ornare ornare nulla quis tincidunt. Morbi nisi elit, mattis nec bibendum vel, facilisis eu ipsum. Phasellus non dolor erat, in placerat lacus. Aliquam pulvinar, est eu commodo vulputate, neque elit molestie lorem, sed vestibulum felis erat et risus. Nulla non velit odio.</p>\n<p>Curabitur ornare ornare nulla quis tincidunt. Morbi nisi elit, mattis nec bibendum vel, facilisis eu ipsum. Phasellus non dolor erat, in placerat lacus. Aliquam pulvinar, est eu commodo vulputate, neque elit molestie lorem, sed vestibulum felis erat et risus. Nulla non velit odio.</p>', 'published', 'public', 0, NULL, NULL, NULL, NULL, NULL, 'post', 0, NULL, 1, NULL, '2014-03-29 15:45:00', '2014-03-29 15:45:00'),
(13, 'Help', 'help', NULL, '<p>How to create accounting module :&nbsp;<br />\n4 steps for create any kind of module such as accounting, payroll, inventory etc. (we are keepon increase controller for form builder). Now 5%-10% programming (coding) required. Coming soon 0% coding.<br />\n&nbsp;<br />\nStep -1 : Create one or two form (Builder--&gt;Form Builder), all field name must be unique.&nbsp;<br />\nStep -2 : Create a module (Builder --&gt; Module Builder) and select which form you are using.&nbsp;<br />\nStep -3 : Install Module. go to Extension --&gt; module --&gt; Install<br />\nStep -4 : Create Menu (Menu manager) must assign module.<br />\n&nbsp;<br />\nThanks<br />\nAnd Enjoy.</p>\n\n<p>&nbsp;</p>\n', 'published', 'public', 0, NULL, NULL, NULL, '', '', 'page', 0, NULL, 1, NULL, '2017-04-05 00:31:50', '2017-04-05 00:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `report_generators`
--

CREATE TABLE `report_generators` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modules` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_calendars` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `description`, `value`, `created_at`, `updated_at`) VALUES
(1, 'website_name', '', 'Doptor CMS', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(2, 'footer_text', '', 'Powered by : Doptor v1.2, Copyright @ 2011-2015', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(3, 'public_offline', '', 'no', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(4, 'public_offline_end', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(5, 'admin_offline', '', 'no', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(6, 'admin_offline_end', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(7, 'backend_offline', '', 'no', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(8, 'backend_offline_end', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(9, 'offline_message', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(10, 'email_host', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(11, 'email_port', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(12, 'email_encryption', '', 'false', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(13, 'email_username', '', 'admin', '2017-04-05 00:31:51', '2017-04-05 12:23:22'),
(14, 'email_password', '', '123456', '2017-04-05 00:31:51', '2017-04-05 12:23:23'),
(15, 'mysqldump_path', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(16, 'backend_theme', '', '3', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(17, 'admin_theme', '', '2', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(18, 'public_theme', '', '1', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(19, 'website_logo', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(20, 'facebook_link', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(21, 'twitter_link', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(22, 'gplus_link', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(23, 'company_name', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(24, 'company_address', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(25, 'company_contact', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(26, 'disabled_ips', '', '', '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(27, 'auto_logout_time', '', '500', '2017-04-05 00:31:51', '2017-04-05 12:23:22'),
(28, 'language', '', 'en', '2017-04-05 12:23:22', '2017-04-05 12:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(10) UNSIGNED NOT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_manual` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'published',
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `caption`, `image`, `link_title`, `link`, `link_manual`, `status`, `publish_start`, `publish_end`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '<p>www.doptor.org</p>\n', 'doptor profile.png', NULL, NULL, NULL, 'published', NULL, NULL, 1, 0, '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(4, '<p>DOPTOR</p>\n', 'doptor_banner.png', NULL, NULL, NULL, 'published', NULL, NULL, 1, 0, '2017-04-05 00:31:51', '2017-04-05 00:31:51'),
(5, '<p>doptor</p>\n', 'doptor profile 11.png', NULL, NULL, NULL, 'published', NULL, NULL, 1, 0, '2017-04-05 00:31:51', '2017-04-05 00:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `screenshot` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `has_settings` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `version`, `author`, `description`, `screenshot`, `directory`, `target`, `has_settings`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Default Public Theme', '1.0', '', 'Default Public Theme', '', 'default', 'public', 0, 1, '2017-04-05 06:31:52', NULL),
(2, 'Default Admin Theme', '1.0', '', 'Default Admin Theme', '', 'default', 'admin', 0, 1, '2017-04-05 06:31:52', NULL),
(3, 'Default Backend Theme', '1.0', '', 'Default Backend Theme', '', 'default', 'backend', 0, 1, '2017-04-05 06:31:52', NULL),
(4, 'Default Public Theme 2', '1.0', '', 'Default Public Theme 2', '', 'default2', 'public', 0, 1, '2017-04-05 06:31:52', NULL),
(5, 'Zeltrax Theme', '1.0', '', 'Zeltrax Theme', 'assets/public/zeltrax/images/zeltrax_screenshot.png', 'zeltrax', 'public', 0, 1, '2017-04-05 06:31:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theme_settings`
--

CREATE TABLE `theme_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, '::1', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translation_languages`
--

CREATE TABLE `translation_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translation_languages`
--

INSERT INTO `translation_languages` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '2017-04-05 00:31:53', '2017-04-05 00:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_question` text COLLATE utf8_unicode_ci,
  `security_answer` text COLLATE utf8_unicode_ci,
  `auto_logout_time` int(10) UNSIGNED DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `last_pw_changed` datetime NOT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `photo`, `security_question`, `security_answer`, `auto_logout_time`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `last_pw_changed`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'rony.doptor@gmail.com', '$2y$10$8p3ha0VwI.ATO1VGT3ZZ.OCZ.0DlNrK5Ab8FxjN6d85eF/TwH8OBS', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-04-05 12:22:43', '0000-00-00 00:00:00', '$2y$10$MUfI4z7uMh.8H.o.McrX9.3uzt3fY28yCjjbVkRbtkrk16rbAci3a', NULL, 'Rony', 'Debnath', NULL, '2017-04-05 00:31:49', '2017-04-05 12:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `built_forms`
--
ALTER TABLE `built_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `built_forms_hash_unique` (`hash`),
  ADD KEY `built_forms_category_index` (`category`);

--
-- Indexes for table `built_modules`
--
ALTER TABLE `built_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `built_modules_hash_unique` (`hash`);

--
-- Indexes for table `built_reports`
--
ALTER TABLE `built_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `built_reports_created_by_index` (`created_by`),
  ADD KEY `built_reports_updated_by_index` (`updated_by`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_index` (`created_by`),
  ADD KEY `categories_updated_by_index` (`updated_by`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_index` (`category_id`),
  ADD KEY `category_post_post_id_index` (`post_id`);

--
-- Indexes for table `contact_categories`
--
ALTER TABLE `contact_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_categories_created_by_index` (`created_by`),
  ADD KEY `contact_categories_updated_by_index` (`updated_by`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_emails`
--
ALTER TABLE `contact_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_categories`
--
ALTER TABLE `form_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_entries`
--
ALTER TABLE `form_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indexes for table `group_menu`
--
ALTER TABLE `group_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_menu_group_id_index` (`group_id`),
  ADD KEY `group_menu_menu_id_index` (`menu_id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdl_doptor_companies`
--
ALTER TABLE `mdl_doptor_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mdl_doptor_companies_country_id_index` (`country_id`);

--
-- Indexes for table `mdl_doptor_company_branches`
--
ALTER TABLE `mdl_doptor_company_branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mdl_doptor_company_branches_company_id_index` (`company_id`);

--
-- Indexes for table `mdl_doptor_countries`
--
ALTER TABLE `mdl_doptor_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdl_doptor_incharges`
--
ALTER TABLE `mdl_doptor_incharges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mdl_doptor_incharges_inchargable_id_inchargable_type_index` (`inchargable_id`,`inchargable_type`);

--
-- Indexes for table `media_entries`
--
ALTER TABLE `media_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_entries_created_by_index` (`created_by`),
  ADD KEY `media_entries_updated_by_index` (`updated_by`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_category_index` (`category`),
  ADD KEY `menus_position_foreign` (`position`);

--
-- Indexes for table `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_positions`
--
ALTER TABLE `menu_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_hash_unique` (`hash`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_created_by_index` (`created_by`),
  ADD KEY `posts_updated_by_index` (`updated_by`);

--
-- Indexes for table `report_generators`
--
ALTER TABLE `report_generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slideshow_created_by_index` (`created_by`),
  ADD KEY `slideshow_updated_by_index` (`updated_by`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themes_created_by_index` (`created_by`);

--
-- Indexes for table `theme_settings`
--
ALTER TABLE `theme_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_settings_theme_id_index` (`theme_id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `translation_languages`
--
ALTER TABLE `translation_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `built_forms`
--
ALTER TABLE `built_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `built_modules`
--
ALTER TABLE `built_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `built_reports`
--
ALTER TABLE `built_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contact_categories`
--
ALTER TABLE `contact_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_emails`
--
ALTER TABLE `contact_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `form_categories`
--
ALTER TABLE `form_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `form_entries`
--
ALTER TABLE `form_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `group_menu`
--
ALTER TABLE `group_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT for table `mdl_doptor_companies`
--
ALTER TABLE `mdl_doptor_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mdl_doptor_company_branches`
--
ALTER TABLE `mdl_doptor_company_branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mdl_doptor_countries`
--
ALTER TABLE `mdl_doptor_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `mdl_doptor_incharges`
--
ALTER TABLE `mdl_doptor_incharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media_entries`
--
ALTER TABLE `media_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_positions`
--
ALTER TABLE `menu_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `report_generators`
--
ALTER TABLE `report_generators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `theme_settings`
--
ALTER TABLE `theme_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `translation_languages`
--
ALTER TABLE `translation_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `built_forms`
--
ALTER TABLE `built_forms`
  ADD CONSTRAINT `built_forms_category_foreign` FOREIGN KEY (`category`) REFERENCES `form_categories` (`id`);

--
-- Constraints for table `built_reports`
--
ALTER TABLE `built_reports`
  ADD CONSTRAINT `built_reports_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `built_reports_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_categories`
--
ALTER TABLE `contact_categories`
  ADD CONSTRAINT `contact_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contact_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `group_menu`
--
ALTER TABLE `group_menu`
  ADD CONSTRAINT `group_menu_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_menu_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mdl_doptor_companies`
--
ALTER TABLE `mdl_doptor_companies`
  ADD CONSTRAINT `mdl_doptor_companies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `mdl_doptor_countries` (`id`);

--
-- Constraints for table `mdl_doptor_company_branches`
--
ALTER TABLE `mdl_doptor_company_branches`
  ADD CONSTRAINT `mdl_doptor_company_branches_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `mdl_doptor_companies` (`id`);

--
-- Constraints for table `media_entries`
--
ALTER TABLE `media_entries`
  ADD CONSTRAINT `media_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `media_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_category_foreign` FOREIGN KEY (`category`) REFERENCES `menu_categories` (`id`),
  ADD CONSTRAINT `menus_position_foreign` FOREIGN KEY (`position`) REFERENCES `menu_positions` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD CONSTRAINT `slideshow_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `slideshow_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `themes`
--
ALTER TABLE `themes`
  ADD CONSTRAINT `themes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `theme_settings`
--
ALTER TABLE `theme_settings`
  ADD CONSTRAINT `theme_settings_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
