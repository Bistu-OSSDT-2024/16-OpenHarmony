import relationalStore from '@ohos.data.relationalStore'
//import MemoTable from '../database/MemoTable';
import { MemoTable } from '../model/TableInterface'

export default class CommonConstants {

  // Rdb 数据库配置
  static readonly STORE_CONFIG:relationalStore.StoreConfig = {
    name:'database.db',
    securityLevel:relationalStore.SecurityLevel.S1
  }

  static readonly MEMO_TABLE:MemoTable = {
    tableName:'memoTable',
    sqlCreate:'CREATE TABLE IF NOT EXISTS memoTable(id INTEGER PRIMARY KEY AUTOINCREMENT, updateTime INTEGER, content TEXT)',
    columns:['id','updateTime','content']
  }

  static readonly RDB_TAG = '[Debug.Rdb]';
  static readonly TABLE_TAG = '[Debug.memoTable]';
  static readonly INDEX_TAG = '[Debug.Index]';

}