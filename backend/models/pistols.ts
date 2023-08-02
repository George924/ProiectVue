import { User } from "./../types/User";
import { db } from "../db";
import { OkPacket, RowDataPacket } from "mysql2";
import { Pistols } from "../types/Pistols";
// Get all users
export const findAll = (callback: Function) => {
  const queryString = `SELECT * FROM pistols`;
  db.query(queryString, (err, result) => {
    if (err) {
      callback(err);
    }
    const rows = <RowDataPacket[]>result;
    const pistols: Pistols[] = [];
    rows.forEach((row) => {
      const pistol: Pistols = {
        id: row.id,
        nume: row.nume,
       
        dataadaugare: row.dataadaugare,
        ImgSource: row.ImgSource,
        
      };
      pistols.push(pistol);
    });
    callback(null, pistols);
  });
};