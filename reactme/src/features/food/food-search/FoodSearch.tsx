import { Button, Form, InputGroup } from "react-bootstrap"
import { useAppDispatch, useAppSelector } from "../../../app/hooks"
import { foodSearch, updateFoodSearch } from "../foodSearchSlice"
import { useTranslation } from "react-i18next";

export const FoodSearch = () => {

  const { t, i18n } = useTranslation();
    const dispatch = useAppDispatch()
    const {term,tag, page} = useAppSelector(foodSearch)


    function handleSearchChange(e: any ){
        console.log("search value is"+e.target.value)
        dispatch(updateFoodSearch({term: e.target.value, tag:tag, page: 0}))
    }
    const plc = t('food.searchFood')
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