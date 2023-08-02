"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.findAll = void 0;
const db_1 = require("../db");
// Get all users
const findAll = (callback) => {
    const queryString = `SELECT * FROM pistols`;
    db_1.db.query(queryString, (err, result) => {
        if (err) {
            callback(err);
        }
        const rows = result;
        const pistols = [];
        rows.forEach((row) => {
            const pistol = {
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
exports.findAll = findAll;
