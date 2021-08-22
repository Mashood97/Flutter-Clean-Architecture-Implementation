import 'package:floor/floor.dart';
import '../../../helpers/constant/constant_app.dart';

//For eg if we use another model inside a model so we need to use TypeConverted because sqlite has
//primitive data types only
@Entity(tableName: kTaskTblName)
class TaskEntity {
  @PrimaryKey(autoGenerate: true)
  int? id;
  final String? taskName;
  final String? time;

  TaskEntity({
    this.taskName,
    this.time,
  });
}
