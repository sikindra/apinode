const { getUserByUserId,login,getUserList,getProfileList } = require("./user.controller");
const { senderList,templateList,entityList } = require("./sender.controller");
const { checkToken } = require("../../auth/token_validation");
const router = require("express").Router();


router.post("/login", login);
// router.get("/",checkToken, createUser);
router.get("/:id", checkToken, getUserByUserId);
router.post("/profile", checkToken, getProfileList);
router.post("/userlist", checkToken, getUserList);
router.post("/sender",checkToken, senderList);
router.post("/template",checkToken, templateList);
router.post("/entity",checkToken, entityList);

module.exports = router;



