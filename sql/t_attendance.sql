/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : db1

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 28/09/2022 10:25:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_attendance
-- ----------------------------
DROP TABLE IF EXISTS `t_attendance`;
CREATE TABLE `t_attendance` (
  `record_id` varchar(15) NOT NULL COMMENT '記録番号',
  `attendance_date` varchar(10) DEFAULT NULL COMMENT '日付',
  `start_time` varchar(5) DEFAULT NULL COMMENT '出勤時間',
  `end_time` varchar(5) DEFAULT NULL COMMENT '退勤時間',
  `rest_hours` decimal(3,1) DEFAULT NULL COMMENT '休憩時間',
  `working_hours` decimal(3,1) DEFAULT NULL COMMENT '作業時間',
  `overtime_hours` decimal(3,1) DEFAULT NULL COMMENT '残業時間',
  `absence_hours` decimal(3,1) DEFAULT NULL COMMENT '欠勤時間',
  `working_status_id` int DEFAULT NULL COMMENT '状態ID',
  `working_details` varchar(200) DEFAULT NULL COMMENT '作業内容',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` int DEFAULT NULL COMMENT '作成者id',
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user_id` int DEFAULT NULL COMMENT '更新者id',
  `flow_status_id` int DEFAULT NULL COMMENT 'フロー状態ID',
  `rec_del_flg` int DEFAULT NULL COMMENT '削除フラグ',
  `version` int DEFAULT '1' COMMENT '乐观锁',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_attendance
-- ----------------------------
BEGIN;
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022040101', '2022-04-01', '09:00', '19:00', 3.0, 7.0, 0.0, 0.0, 0, '福田ロジスティック株式会社訪問する', '2022-05-02 00:00:00', 10021, '2022-04-01 00:00:00', 10006, 1, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022040601', '2022-04-06', '06:55', '16:55', 1.0, 9.0, 1.0, 0.0, 0, '北海道に出張する', '2022-09-27 10:56:52', 10001, NULL, 0, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022040701', '2022-04-07', '10:00', '18:00', 1.5, 5.5, 0.0, 1.0, 0, '蓮株式会社訪問する', '2022-05-20 00:00:00', 10097, '2022-08-29 00:00:00', 0, 3, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022050501', '2022-05-05', '08:54', '19:54', 2.0, 9.0, 1.0, 0.0, 0, '出張する', '2022-09-27 10:55:41', 10001, NULL, 0, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022062201', '2022-06-22', '10:00', '19:00', 0.0, 8.0, 1.0, 0.0, 0, '樹コンサルタント株式会社訪問する', '2022-05-24 00:00:00', 10055, '2022-07-22 00:00:00', 0, 1, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091001', '2022-09-10', '10:00', '18:00', 1.0, 7.0, 0.0, 1.0, 1, '舞株式会社訪問する', '2022-04-24 00:00:00', 10054, '2022-06-25 00:00:00', 10043, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091101', '2022-09-11', '09:00', '18:00', 1.0, 6.5, 0.0, 1.5, 0, '井上玩具株式会社訪問する', '2022-08-04 00:00:00', 10077, '2022-02-03 00:00:00', 10001, 1, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091201', '2022-09-12', '09:00', '19:00', 2.0, 8.0, 0.0, 0.0, 0, '愛梨製薬株式会社訪問する', '2022-03-04 00:00:00', 10001, '2022-07-21 00:00:00', 10001, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091301', '2022-09-13', '09:00', '20:30', 1.0, 8.0, 2.5, 0.0, 0, '近藤コンサルタント株式会社訪問する', '2022-07-13 00:00:00', 10001, '2022-06-20 00:00:00', 10046, 3, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091401', '2022-09-14', '09:00', '18:00', 1.0, 8.0, 0.0, 0.0, 0, 'ホームページ制作', '2022-09-14 00:00:00', 10001, NULL, 10001, 2, 0, 2);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091417', '2022-06-10', '10:00', '19:00', 0.7, 4.3, 4.3, 0.0, 0, '桜井株式会社訪問する', '2022-03-23 00:00:00', 10040, NULL, NULL, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091418', '2022-02-18', '10:00', '18:00', 1.0, 10.2, 1.7, 0.0, 0, '訪問する高木株式会社', '2022-04-27 00:00:00', 10037, '2022-02-16 00:00:00', NULL, 1, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091419', '2022-07-26', '10:00', '19:00', 1.0, 5.8, 0.4, 0.0, 2, '湊システム株式会社訪問する', '2022-05-07 00:00:00', 10052, NULL, NULL, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091420', '2022-06-15', '10:00', '18:00', 2.9, 7.2, 0.5, 0.0, 1, '金子株式会社訪問する', '2022-09-04 00:00:00', 10095, '2022-06-19 00:00:00', NULL, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091421', '2022-02-16', '09:00', '19:00', 2.5, 2.9, 3.9, 0.2, 1, '百花株式会社訪問する', '2022-06-05 00:00:00', 10067, '2022-02-15 00:00:00', NULL, 2, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091422', '2022-07-21', '09:00', '18:00', 2.8, 1.4, 3.7, 0.0, 0, '訪問する菅原電子株式会社', '2022-04-07 00:00:00', 10020, NULL, NULL, 3, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091423', '2022-08-12', '09:00', '18:00', 1.0, 6.3, 3.2, 2.6, 0, '玲奈株式会社訪問する', '2022-03-13 00:00:00', 10066, NULL, NULL, 3, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091601', '2022-09-16', '10:00', '18:00', 1.0, 1.1, 1.0, 0.0, 0, '佐野株式会社訪問する', '2022-01-14 00:00:00', 10086, NULL, NULL, 1, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091701', '2022-09-17', '09:00', '18:00', 1.0, 3.1, 4.2, 0.8, 1, '村田株式会社訪問する', '2022-08-11 00:00:00', 10061, '2022-06-15 00:00:00', NULL, 2, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091801', '2022-09-18', '09:00', '18:00', 1.0, 1.1, 1.1, 0.0, 1, '舞株式会社訪問する', '2022-06-06 00:00:00', 10097, NULL, NULL, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091901', '2022-09-19', '09:00', '18:00', 5.0, 0.9, 0.1, 0.0, 0, '一輝玩具株式会社訪問する', '2022-02-01 00:00:00', 10012, '2022-06-27 00:00:00', NULL, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022091902', '2022-09-19', '09:00', '19:00', 3.6, 7.4, 3.6, 0.0, 0, '悠人水産株式会社訪問する', '2022-02-17 00:00:00', 10063, NULL, 10081, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022092001', '2022-09-20', '09:00', '18:00', 1.0, 4.8, 2.2, 0.4, 0, '三浦株式会社訪問する', '2022-04-02 00:00:00', 10022, NULL, NULL, 1, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022092401', '2022-09-24', '09:00', '18:00', 1.0, 4.5, 0.0, 3.5, 0, '聖子株式会社訪問する', '2022-02-02 00:00:00', 10011, '2022-08-08 00:00:00', NULL, 2, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022092501', '2022-09-25', '09:00', '19:00', 1.0, 8.0, 1.0, 0.0, 1, '詩乃電子株式会社訪問する', '2022-01-06 00:00:00', 10069, '2022-02-26 00:00:00', NULL, 3, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100012022092701', '2022-09-27', '09:59', '19:59', 1.0, 9.0, 1.0, 0.0, 0, '詳細設計書を書く', '2022-09-27 10:59:45', 10001, NULL, 0, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100022022072204', '2022-07-22', '09:00', '19:00', 0.0, 0.0, 0.0, 0.0, 0, '百花株式会社訪問する', '2022-09-27 10:45:06', 10002, NULL, 10001, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100022022072601', '2022-07-26', '09:37', '19:37', 1.0, 9.0, 1.0, 0.0, 0, '単体テスト更新', '2022-09-26 10:38:11', 10002, NULL, 10001, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100022022092001', '2022-09-20', '07:46', '20:48', 1.0, 9.0, 1.0, 1.0, 1, 'AAAA訪問する', '2022-09-22 09:46:21', 10002, NULL, 10001, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100022022092101', '2022-09-21', '08:43', '21:43', 1.0, 9.0, 1.0, 1.0, 3, 'ABCDEF訪問する', '2022-09-27 10:45:06', 10001, NULL, 10001, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100022022092201', '2022-09-22', '10:00', '19:00', 0.0, 0.0, 0.0, 0.0, 0, '金子株式会社訪問する', '2022-09-27 10:45:06', 10001, NULL, 10001, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100022022092202', '2022-09-22', '10:00', '19:00', 0.0, 0.0, 0.0, 0.0, 0, '金子株式会社訪問する', '2022-09-27 10:45:06', 10001, NULL, 10001, 0, 0, NULL);
INSERT INTO `t_attendance` (`record_id`, `attendance_date`, `start_time`, `end_time`, `rest_hours`, `working_hours`, `overtime_hours`, `absence_hours`, `working_status_id`, `working_details`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `flow_status_id`, `rec_del_flg`, `version`) VALUES ('100032022080101', '2022-08-01', '09:00', '19:44', 1.0, 9.0, 1.0, 0.0, 0, '菅原電子株式会社訪問する', '2022-09-27 10:45:06', 10003, NULL, 10001, 0, 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
