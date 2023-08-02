import express, {Request, Response} from "express";
import * as bodyParser from "body-parser";
import * as pistolsModel from "../models/pistols";
import {Pistols} from "../types/Pistols";
const PistolsRouter = express.Router();
var jsonParser = bodyParser.json()
PistolsRouter.get("/", async (req: Request, res: Response) => {
  pistolsModel.findAll((err: Error, pistols: Pistols[]) => {
    if (err) {
      return res.status(500).json({"errorMessage": err.message});
    }

    res.status(200).json({"data": pistols});
  });
});

export {PistolsRouter};