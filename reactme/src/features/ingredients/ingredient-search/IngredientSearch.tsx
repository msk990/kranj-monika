import { InputGroup, Form, Button } from "react-bootstrap"
import { useAppDispatch, useAppSelector } from "../../../app/hooks"
import { ingredientSearch, updateIngredientSearch } from "../ingredientSearchSlice"
import { useTranslation } from "react-i18next";

export const IngredientSearch = () => {

    const dispatch = useAppDispatch()
    const {term,tag, page} = useAppSelector(ingredientSearch)

  const { t, i18n } = useTranslation();
    function handleSearchChange(e: any ){
        console.log("search value is"+e.target.value)
        dispatch(updateIngredientSearch({term: e.target.value, tag:tag, page: 0}))
    }
const plc = t('ingredients.searchIngredients')
    return (
        <>
             <InputGroup className="mb-3">
        <Form.Control
          placeholder={plc}
          aria-label="Recipient's username"
          aria-describedby="basic-addon2"
          onChange={handleSearchChange}
        />
        <Button variant="outline-secondary" id="button-addon2">
        {t('common.search')}
        </Button>
      </InputGroup>
        </>
    )
}