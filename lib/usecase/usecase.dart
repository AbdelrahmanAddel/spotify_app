
//! type هو نوع البيانات اللي هترجعلي
//! Param هو نوع ال براميتر اللي هبعته
abstract class UseCase <Type,Param>{ 
  Future <Type> call({required Param param});
}